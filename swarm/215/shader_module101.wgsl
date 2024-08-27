struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<f32>, 10>;

var<private> global2: vec3<u32> = vec3<u32>(0u, 7506u, 4294967295u);

var<private> global3: vec4<i32>;

var<private> global4: vec2<u32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = vec2<bool>(global0.x, false);
    global1 = array<vec3<f32>, 10>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -458f))) - -1172f)), 1021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1934f, 545f)), 1f)))));
    let var_1 = -(~vec3<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global3.zy, global3.xz), 17515i ^ arg_0), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0, global3.x, u_input.c, arg_0), vec4<i32>(u_input.c, u_input.c, -1i, -27553i))));
    var var_2 = Struct_1(global3.yzy, _wgslsmith_f_op_f32(_wgslsmith_div_f32(458f, _wgslsmith_f_op_f32(min(var_0.x, -587f))) * _wgslsmith_f_op_f32(2106f * var_0.x)), countOneBits(41992u));
    return ~global2.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> f32 {
    let var_0 = -select(-u_input.c, arg_1, any(arg_0.xy));
    var var_1 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x | global2.x, ~(~global4.x), 1u), min(vec3<u32>(global2.x, 38423u, 1737u) << (vec3<u32>(global4.x, u_input.b.x, 43449u) % vec3<u32>(32u)), ~vec3<u32>(41116u, u_input.b.x, 4294967295u)) >> (vec3<u32>(~u_input.e.x, func_3(var_0), 31058u) % vec3<u32>(32u)));
    global3 = abs(firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, -1707i, 1i, -34399i), vec4<i32>(arg_1, global3.x, -2021i, arg_1)) | vec4<i32>(27529i, arg_1, arg_1, global3.x))));
    global3 = vec4<i32>(_wgslsmith_sub_i32(~(-33206i), 0i) ^ -arg_1, -_wgslsmith_add_i32(~0i, max(2147483647i & var_0, _wgslsmith_sub_i32(var_0, arg_1))), 1481i, _wgslsmith_mult_i32(u_input.c, select(0i, -(~(-38931i)), arg_0.x)));
    let var_2 = Struct_1(countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global3.x, u_input.c), global3.zzy), min(firstTrailingBit(vec3<i32>(u_input.c, 27381i, -15068i)), global3.zyz), vec3<i32>(abs(arg_1), abs(arg_1), -u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2219f + _wgslsmith_f_op_f32(trunc(-366f)))))), 0u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(max(var_2.b, -1067f)))))))) * var_2.b);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(select(!vec3<bool>(arg_0.x, global0.x, arg_0.x), !(!vec3<bool>(false, global0.x, global0.x)), !select(vec3<bool>(global0.x, false, arg_0.x), vec3<bool>(global0.x, global0.x, arg_0.x), arg_0.x)), u_input.c))));
    var var_1 = vec2<bool>((-2147483647i < _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-12787i, 0i, global3.x), vec3<i32>(2147483647i, 1i, -1i)), firstTrailingBit(vec3<i32>(-42857i, -2147483647i, global3.x)))) && (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(530f)))) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(217f * -1000f)))), select(!global0.x, any(vec2<bool>(global0.x, u_input.c > -59349i)), _wgslsmith_clamp_u32(countOneBits(28753u), countOneBits(7563u), abs(global4.x)) == global4.x));
    let var_2 = false;
    let var_3 = ~_wgslsmith_add_u32(u_input.e.x, global2.x & _wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_mult_u32(2484u, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.e.wz, vec2<u32>(1u, 6739u))));
    global4 = ~abs(global2.zz);
    return Struct_1(global3.yyw, -306f, global4.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    var var_0 = vec3<bool>(!global0.x, false, global0.x & (true & !global0.x));
    var var_1 = _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(global3.x << (4294967295u % 32u), arg_0.a.x, _wgslsmith_sub_i32(9319i, 0i)) | (~global3.zyw >> (~u_input.b % vec3<u32>(32u)))), _wgslsmith_div_vec3_i32(-countOneBits(arg_0.a), vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.a.zx, arg_0.a.yz), 8156i, arg_0.a.x) ^ ~vec3<i32>(global3.x, 0i, -6955i)));
    global4 = ~vec2<u32>(arg_0.c | u_input.e.x, ~arg_0.c);
    let var_2 = arg_1.x;
    var_1 = arg_0.a;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec2<u32>(global2.x, ~u_input.e.x);
    let var_0 = func_4(func_1(!vec2<bool>(true, !global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(func_1(select(vec2<bool>(false, global0.x), vec2<bool>(false, true), global0.x)).b, _wgslsmith_f_op_f32(-1064f + _wgslsmith_f_op_f32(f32(-1f) * -639f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1863f), 1354f)));
    global1 = array<vec3<f32>, 10>();
    global4 = global2.xy;
    var var_1 = firstTrailingBit(-1i) << ((firstTrailingBit(4294967295u) | _wgslsmith_add_u32(u_input.d, ~func_1(vec2<bool>(global0.x, false)).c)) % 32u);
    let var_2 = func_1(vec2<bool>(global0.x, global0.x || !global0.x));
    var var_3 = _wgslsmith_dot_vec2_i32(-vec2<i32>(global3.x, global3.x), global3.yw);
    global0 = vec2<bool>(!global0.x, -_wgslsmith_sub_i32(global3.x << (2330u % 32u), ~var_2.a.x) <= -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1967f, var_2.b, var_2.b, 1855f) - vec4<f32>(var_2.b, var_2.b, var_2.b, var_2.b))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(549f, -129f, 1977f, var_2.b), vec4<f32>(var_2.b, -867f, 1075f, 154f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2344f, var_2.b, 642f, -1300f))))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1883f * -977f), _wgslsmith_f_op_f32(-var_2.b), -1160f, _wgslsmith_f_op_f32(abs(2452f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1067f)) + _wgslsmith_f_op_f32(f32(-1f) * -1773f)), 278f, 423f, _wgslsmith_f_op_f32(max(324f, _wgslsmith_f_op_f32(-var_2.b)))))), 23602u, vec2<f32>(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b))))));
}

