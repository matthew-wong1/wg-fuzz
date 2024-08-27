struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_4,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8>;

var<private> global1: bool;

var<private> global2: i32;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global4: array<Struct_1, 11>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = arg_0 | reverseBits(arg_0);
    global2 = u_input.b;
    global0 = array<vec4<i32>, 8>();
    let var_1 = !select(!vec3<bool>(true, select(arg_3.a.a, arg_1.a.b.a.a, arg_3.a.a), true), !(!select(vec3<bool>(arg_2.x, true, arg_3.a.a), vec3<bool>(arg_1.a.b.a.a, arg_3.a.a, false), vec3<bool>(arg_1.a.b.a.a, false, arg_1.a.b.a.a))), vec3<bool>(true, !(true & arg_1.a.b.a.a), arg_1.a.b.a.a));
    global4 = array<Struct_1, 11>();
    return arg_3.b;
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = !select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(!(!vec3<bool>(arg_0.a.a, false, arg_0.a.a)), !(!vec3<bool>(arg_0.a.a, arg_0.a.a, false)), arg_0.a.a), !vec3<bool>(any(vec2<bool>(false, true)), arg_0.b.x == arg_0.b.x, all(vec4<bool>(arg_0.a.a, false, arg_0.a.a, false))));
    let var_1 = u_input.b >> (0u % 32u);
    var var_2 = !select(vec3<bool>(true, all(select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(true, arg_0.a.a, true, var_0.x), false)), var_0.x), vec3<bool>(true, true, arg_0.a.a), true);
    return 4294967295u;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-577f, -386f)))));
    var var_1 = vec4<u32>(82230u, func_4(Struct_2(global3[_wgslsmith_index_u32(~(~4294967295u), 3u)], -vec4<i32>(u_input.b, u_input.b, -21444i, 2147483647i) & func_3(11549u, Struct_4(Struct_3(vec3<f32>(-1956f, -990f, -632f), Struct_2(Struct_1(false), global0[_wgslsmith_index_u32(52875u, 8u)])), arg_0), vec2<bool>(false, true), Struct_2(Struct_1(false), vec4<i32>(-1i, -1i, u_input.b, -663i))))), ~4294967295u, 56197u);
    let var_2 = ~_wgslsmith_div_u32(57548u, ~var_1.x);
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, 1019f, -1244f))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1196f), -596f, -1051f)), Struct_2(Struct_1(all(vec2<bool>(false, false))), vec4<i32>(u_input.b, 3791i, -37997i, 1i) >> (~vec4<u32>(7364u, 0u, 34922u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1374f))));
    global3 = array<Struct_1, 3>();
    return u_input.b;
}

fn func_1(arg_0: f32) -> Struct_5 {
    var var_0 = func_2(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 274f), all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)))));
    let var_1 = true;
    global1 = false;
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-623f, _wgslsmith_f_op_f32(f32(-1f) * -1235f), arg_0))), Struct_2(global4[_wgslsmith_index_u32(countOneBits(1u), 11u)], countOneBits(global0[_wgslsmith_index_u32(1870u, 8u)]))), arg_0);
    var_0 = -abs(2147483647i);
    return Struct_5(-select(-vec4<i32>(2147483647i, 23765i, -45310i, var_2.a.b.b.x) | global0[_wgslsmith_index_u32(1u, 8u)], -(~vec4<i32>(-1i, var_2.a.b.b.x, u_input.b, 15760i)), !select(vec4<bool>(true, true, false, var_2.a.b.a.a), vec4<bool>(false, var_1, var_1, var_2.a.b.a.a), var_1)), var_2.a.b, var_2, u_input.b, countOneBits(vec3<u32>(1u, 1u, 1u)));
}

fn func_5(arg_0: Struct_5) -> vec3<f32> {
    var var_0 = Struct_1(any(select(vec3<bool>(true, 18792u == arg_0.e.x, all(vec2<bool>(true, arg_0.b.a.a))), vec3<bool>(-1623f < arg_0.c.a.a.x, true, all(vec3<bool>(false, arg_0.c.a.b.a.a, false))), arg_0.c.a.b.a.a && arg_0.c.a.b.a.a)));
    global2 = -arg_0.c.a.b.b.x;
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -243f) - _wgslsmith_f_op_f32(trunc(-419f)));
    var var_3 = vec2<bool>((arg_0.e.x << (_wgslsmith_add_u32(_wgslsmith_clamp_u32(48319u, arg_0.e.x, 1u), abs(21091u)) % 32u)) == 7759u, !any(!select(vec3<bool>(arg_0.c.a.b.a.a, true, var_0.a), vec3<bool>(true, arg_0.b.a.a, false), true)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0.c.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -2147483647i;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-509f, 839f, -1000f), vec3<f32>(-104f, 1000f, -138f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(457f, -1051f, -181f) + vec3<f32>(-185f, -591f, -174f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_5(func_1(-750f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1412f - 1198f))), 366f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(157f, -632f))))));
    let var_1 = countOneBits(select(_wgslsmith_add_i32(max(u_input.a, u_input.b), max(-250i, -3313i)), u_input.b, true)) | _wgslsmith_div_i32(u_input.a, u_input.b);
    let var_2 = vec4<i32>(func_2(var_0.x), var_1, 1i, var_1) ^ (_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, -2147483647i, u_input.b, var_1), vec4<i32>(6248i, u_input.b, var_1, abs(1i))) | -(_wgslsmith_div_vec4_i32(vec4<i32>(73386i, 0i, var_1, var_1), vec4<i32>(18988i, -26940i, -32656i, 0i)) ^ vec4<i32>(var_1, 10693i, 25250i, var_1)));
    let var_3 = func_1(var_0.x).c.a.b;
    global2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -994f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, -1284f)), var_0.x), 411f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1643f, -1457f, -303f, 139f) + vec4<f32>(-1590f, var_0.x, -193f, 130f)))))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(24524u, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))) & 1u, firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(95478u, firstTrailingBit(79249u)), _wgslsmith_clamp_u32(~55721u, ~4294967295u, max(4294967295u, 74457u)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(10958u, 4294967295u, 33683u, 1u), vec4<u32>(1u, 39125u, 2320u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), 1u)), var_0.xz, 0u);
}

