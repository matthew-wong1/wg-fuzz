struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<i32> {
    var var_0 = arg_0.a;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, 4294967295u), 4u)];
    global0 = array<Struct_1, 4>();
    var var_2 = arg_0.a & 2966i;
    let var_3 = Struct_1(var_1.a);
    return _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-_wgslsmith_add_i32(1i, 1i), -u_input.b.x, max(_wgslsmith_clamp_i32(29395i, 1i, arg_0.a), 1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, var_3.a, var_3.a, u_input.a), u_input.b >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u) % vec4<u32>(32u))))), -_wgslsmith_sub_vec4_i32(firstTrailingBit(u_input.b), vec4<i32>(_wgslsmith_mult_i32(arg_0.a, 0i), -2147483647i, max(2147483647i, var_3.a), arg_0.a)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 4>();
    var var_0 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(func_3(Struct_1(u_input.b.x), vec4<bool>(false, true, true, true)), vec4<i32>(_wgslsmith_mod_i32(0i, u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.b.xzz, u_input.b.wyz), -18354i, -arg_0.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-912f))))), -1351f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1624f + _wgslsmith_div_f32(-799f, -875f)), -1044f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-554f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-148f - 1069f) * _wgslsmith_f_op_f32(min(-147f, 1268f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1019f))), 684f, 630f, _wgslsmith_div_f32(762f, _wgslsmith_f_op_f32(ceil(746f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1282f, -1000f, -275f, 933f) + vec4<f32>(501f, -559f, -583f, -2013f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 511f, -802f, -1125f)))), vec4<f32>(_wgslsmith_div_f32(-1105f, 509f), -156f, _wgslsmith_f_op_f32(floor(-522f)), _wgslsmith_f_op_f32(ceil(938f))), any(vec2<bool>(true, true)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_1.yyw, var_1.wxx)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(215f, 1145f, -1176f), vec3<f32>(var_1.x, var_1.x, 144f))))), vec3<f32>(_wgslsmith_f_op_f32(-1205f - -1635f), -614f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x + 397f))))))));
    let var_3 = vec2<u32>(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(137344u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, 0u), u_input.c), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.c.x), u_input.c)), 4294967295u), ~43598u), 1u);
    return Struct_1(-arg_0.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(-2961i);
    var var_1 = !all(vec2<bool>(!(92352u >= u_input.c.x), all(vec2<bool>(true, true))));
    var var_2 = !(!any(vec3<bool>(true, true, true)));
    let var_3 = var_0;
    var var_4 = u_input.c.x & u_input.c.x;
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(33757i);
    let var_1 = _wgslsmith_clamp_vec4_u32((~_wgslsmith_add_vec4_u32(vec4<u32>(482u, u_input.c.x, 76192u, 4294967295u), arg_1) >> (firstTrailingBit(arg_1) % vec4<u32>(32u))) ^ ~(~vec4<u32>(9045u, 4294967295u, 6232u, 20176u)), _wgslsmith_mod_vec4_u32(~max(~arg_1, vec4<u32>(37107u, 0u, u_input.c.x, 52905u)), ~abs(~vec4<u32>(u_input.c.x, 5233u, 68069u, 4294967295u))), ~arg_1);
    let var_2 = func_4(vec4<i32>(var_0.a, 1i << (firstTrailingBit(21402u) % 32u), -(~52136i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.a >> (u_input.c.x % 32u), _wgslsmith_mod_i32(-1i, 7290i), ~u_input.b.x), 0i)), func_2(Struct_1(_wgslsmith_div_i32(-u_input.a, -403i))), Struct_1(i32(-1i) * -1i));
    return Struct_1(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_div_vec2_i32(u_input.b.zw, vec2<i32>(0i, 65889i)) ^ arg_2.xx), select(min(_wgslsmith_add_vec2_i32(arg_2.xy, u_input.b.xw), vec2<i32>(2147483647i, arg_2.x)), func_3(func_2(global0[_wgslsmith_index_u32(1873u, 4u)]), !vec4<bool>(arg_0, arg_3.x, false, arg_3.x)).yw, !any(vec2<bool>(arg_0, arg_0)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1, 19888i), u_input.b.zw);
    let var_1 = func_1(any(vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), false)), vec4<u32>(u_input.c.x, u_input.c.x, abs(32946u), ~u_input.c.x), vec3<i32>(max(i32(-1i) * -1i, -20033i), ~arg_0.a, (_wgslsmith_mod_i32(var_0.x, arg_0.a) & -2840i) >> (u_input.c.x % 32u)), select(vec3<bool>(true, false, any(vec4<bool>(true, true, true, true))), vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -62219i, arg_0.a), vec3<i32>(arg_1, 0i, arg_1)) < u_input.a, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))), false), true));
    let var_2 = -1002f;
    global0 = array<Struct_1, 4>();
    var_0 = reverseBits(max(firstTrailingBit(_wgslsmith_div_vec2_i32(select(u_input.b.xy, u_input.b.xw, vec2<bool>(true, true)), ~vec2<i32>(arg_0.a, 12838i))), firstTrailingBit(func_3(arg_0, select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true)).xx)));
    return true;
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: vec4<bool>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~23765u, 4u)];
    global0 = array<Struct_1, 4>();
    var var_1 = (_wgslsmith_f_op_f32(-1047f + -234f) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))))) || true;
    var_1 = arg_1;
    var_1 = true;
    return ~22146u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = u_input.c.x;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(firstLeadingBit(u_input.c.x)), func_6(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1468f - -830f))), !func_5(func_1(false, vec4<u32>(11003u, u_input.c.x, u_input.c.x, u_input.c.x), u_input.b.xyz, vec3<bool>(false, false, true)), u_input.a), select(vec4<bool>(any(vec2<bool>(true, false)), true, true, any(vec2<bool>(true, false))), vec4<bool>(any(vec3<bool>(true, false, true)), true, func_5(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], u_input.a), true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), any(vec3<bool>(false, false, true)))))), 4u)];
    var_0 = 54732u;
    var_0 = u_input.c.x >> (u_input.c.x % 32u);
    var var_2 = Struct_1(abs(_wgslsmith_dot_vec4_i32(-u_input.b, countOneBits(u_input.b << (vec4<u32>(49849u, u_input.c.x, 30627u, u_input.c.x) % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_f32(-1054f - -1000f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1260f - -567f))), -781f, -118f, 130f), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(~u_input.c.x, 18722u)), _wgslsmith_f_op_f32(round(1735f)));
}

