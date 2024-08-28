struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_3;

var<private> global2: array<vec2<f32>, 21>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec4<f32>) -> vec4<bool> {
    global2 = array<vec2<f32>, 21>();
    global0 = vec2<u32>(~(~14801u), ~110596u);
    return vec4<bool>((_wgslsmith_div_u32(32239u, firstTrailingBit(arg_0.a.b)) != abs(reverseBits(1u))) & (~_wgslsmith_mod_i32(-37619i, 47633i) > ~_wgslsmith_dot_vec4_i32(vec4<i32>(48205i, 2147483647i, 23884i, 1i), vec4<i32>(-5436i, -35300i, 2147483647i, -2147483647i))), arg_1.d.x, arg_1.d.x, true);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_5) -> vec2<u32> {
    global1 = Struct_3(Struct_2(Struct_1(1000f, global1.a.a.b)), global0.x, vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.a - 968f), _wgslsmith_div_f32(global1.a.a.a, global1.c.x), -892f));
    global0 = u_input.a;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1895f, -455f)) * 1446f);
    global1 = Struct_3(arg_1.c, _wgslsmith_div_u32(_wgslsmith_mult_u32(66483u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.b, 0u, global1.b), vec3<u32>(global1.a.a.b, global0.x, global1.a.a.b))), _wgslsmith_clamp_u32(countOneBits(4294967295u), ~global1.b, firstTrailingBit(arg_1.a.b))) | u_input.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.a, var_0, -453f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(980f + 1172f)), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.c.x, var_0), global1.a.a.a), global1.a.a.a)));
    var var_1 = global1.c.x;
    return _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(min(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(7141u, 32320u)), u_input.a.x), ~(~_wgslsmith_mod_u32(1u, 33465u))));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    global0 = ~(~func_4(func_3(Struct_2(global1.a.a), Struct_5(global1.a.a, Struct_1(364f, global0.x), global1.a, vec4<bool>(true, true, true, false)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a.a.a, 230f, arg_0.x, global1.a.a.a), vec4<f32>(373f, 1805f, -2674f, arg_0.x)))), Struct_5(global1.a.a, global1.a.a, global1.a, vec4<bool>(true, false, false, false))));
    let var_0 = ~reverseBits(u_input.a.x);
    global2 = array<vec2<f32>, 21>();
    let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_2 = 2147483647i;
    return -1251f;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4) -> Struct_2 {
    global2 = array<vec2<f32>, 21>();
    global2 = array<vec2<f32>, 21>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1.c.yy)), global1.c.zy))) - arg_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c - arg_1.a) + -1888f));
    var var_1 = Struct_5(arg_1, global1.a.a, global1.a, arg_2.a);
    let var_2 = arg_2;
    return Struct_2(global1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(func_1(34i, global1.a.a, Struct_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), all(vec3<bool>(false, true, true))), _wgslsmith_sub_u32(global1.b, 4294967295u) | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(round(-554f)))), _wgslsmith_dot_vec3_u32(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(31339u, 29960u, 1u), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 0u, 15441u))), vec3<u32>(4294967295u ^ u_input.a.x, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 35034u, 40691u) ^ vec3<u32>(1u, global0.x, global1.a.a.b), min(vec3<u32>(u_input.a.x, global1.b, 18652u), vec3<u32>(global0.x, global1.b, u_input.a.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, 1000f, global1.c.x) + global1.c))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-669f, 945f, false)) + _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1794f) * _wgslsmith_f_op_f32(sign(1000f))), global1.a.a.a)));
    var var_0 = _wgslsmith_f_op_f32(-global1.c.x);
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.a.a))), 1f)), -2125f), 18580u);
    var var_2 = ~(~(~vec4<u32>(~1u, ~var_1.b, min(4294967295u, 58989u), _wgslsmith_sub_u32(83338u, var_1.b))));
    global1 = Struct_3(global1.a, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 34708u, 0u), var_2.zyx), var_2.x)), _wgslsmith_div_vec3_u32(max(firstLeadingBit(var_2.wzz), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_1.b, 1u), var_2.zzx)), vec3<u32>(0u, 14709u, global1.b) & vec3<u32>(global1.a.a.b, 4294967295u, 38686u))), _wgslsmith_f_op_vec3_f32(-global1.c));
    var_2 = vec4<u32>(4294967295u, ~countOneBits(var_2.x), ~(~select(~global0.x, 11144u << (1u % 32u), true)), ~(~0u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, var_1.b, global1.a.a.b), min(vec4<u32>(var_2.x, var_2.x, var_1.b, u_input.a.x), vec4<u32>(global0.x, var_2.x, global0.x, var_2.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(2940u, u_input.a.x, 22569u, var_1.b), firstTrailingBit(vec4<u32>(0u, 46478u, 82627u, 1u)))), -vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c.zx - vec2<f32>(1856f, var_1.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -232f)))), vec2<f32>(var_1.a, var_1.a))), ((_wgslsmith_mult_vec2_i32(vec2<i32>(13297i, -4486i), vec2<i32>(12570i, 0i)) << (~vec2<u32>(u_input.a.x, global0.x) % vec2<u32>(32u))) | vec2<i32>(1i, 1i)) >> (vec2<u32>((30313u & global1.a.a.b) ^ global1.b, 0u) % vec2<u32>(32u)), _wgslsmith_clamp_u32(var_2.x & 1u, 4294967295u, 1u));
}

