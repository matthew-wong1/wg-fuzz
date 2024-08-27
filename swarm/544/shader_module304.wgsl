struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: u32;

var<private> global2: Struct_5 = Struct_5(vec4<bool>(true, false, false, false), vec2<i32>(i32(-2147483648), 0i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 13>();
    let var_0 = _wgslsmith_mod_i32(reverseBits(~global2.b.x), 12191i) | 35002i;
    global0 = array<Struct_1, 13>();
    var var_1 = 24463i;
    global0 = array<Struct_1, 13>();
    return global2.b.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global0 = array<Struct_1, 13>();
    var var_0 = ~arg_0.b.b;
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(max(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 29345i, arg_0.c.b.x), vec4<i32>(2147483647i, -21195i, global2.b.x, -2147483647i)), vec4<i32>(-61748i, _wgslsmith_add_i32(2147483647i, arg_1.b.b.x), -2251i, _wgslsmith_clamp_i32(global2.b.x, -16112i, global2.b.x))), ~(~firstTrailingBit(vec4<i32>(48809i, var_0.x, 1i, var_0.x)))), vec4<i32>(-2147483647i, -u_input.a.x | (global2.b.x << (1u % 32u)), max(i32(-1i) * -global2.b.x, global2.b.x), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(35404i, arg_0.c.b.x, -5977i, arg_0.b.b.x), vec4<i32>(global2.b.x, global2.b.x, 45785i, arg_0.b.b.x))), firstTrailingBit(~0i), _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, arg_0.b.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -5164i, u_input.a.x, 0i), vec4<i32>(arg_1.c.b.x, 9452i, -944i, 26386i))))));
    global1 = _wgslsmith_div_u32(59657u, arg_1.c.c);
    global1 = ~65891u >> (~max(abs(_wgslsmith_mult_u32(arg_1.c.c, 0u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.c.c, 0u, arg_0.b.c), ~vec3<u32>(0u, 1u, 21500u))) % 32u);
    return ~_wgslsmith_mod_u32(arg_0.c.c >> (1u % 32u), 59231u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec3<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(885f, 1100f, 191f)))))));
    global1 = select(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, func_3(Struct_2(-1000f, global0[_wgslsmith_index_u32(1u, 13u)], Struct_1(vec3<f32>(-1297f, var_0.x, var_0.x), vec2<i32>(u_input.a.x, -4890i), 1u, vec3<f32>(529f, var_0.x, var_0.x))), Struct_2(var_0.x, global0[_wgslsmith_index_u32(arg_2.x, 13u)], Struct_1(vec3<f32>(var_0.x, -1679f, var_0.x), vec2<i32>(arg_1.x, -41252i), 29075u, vec3<f32>(742f, var_0.x, 2144f))))), arg_2.x)), arg_2.x, true);
    let var_1 = vec4<bool>(true, true, any(!(!(!global2.a.wxy))), any(vec2<bool>(global2.a.x, true)));
    global0 = array<Struct_1, 13>();
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-339f - _wgslsmith_f_op_f32(243f * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 120f) - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1184f * var_0.x)), -2919f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, -1909f, 1000f))))))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(431f - -155f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(var_0.x - var_0.x))) + _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_f_op_f32(-334f - var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, 120f, _wgslsmith_f_op_f32(-var_2.x) == var_0.x))), 319f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-1425f, Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-736f, 2670f, 785f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(266f, -425f, 1578f), vec3<f32>(659f, -1086f, 1498f)))))), vec2<i32>(func_1() ^ (i32(-1i) * -8744i), -2147483647i), 12927u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(vec3<i32>(-8717i, u_input.a.x, global2.b.x), vec3<i32>(0i, 29980i, 1i), vec3<u32>(0u, 4294967295u, 1u))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-152f, -1325f, -492f) + vec3<f32>(-250f, -1000f, 1724f))))), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-522f, -1008f, 953f), vec3<f32>(-1005f, 1311f, -733f), global2.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -586f, -596f)))))), -(~_wgslsmith_div_vec2_i32(global2.b, global2.b)), 0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-765f, -542f, 2179f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(256f, -315f, -1292f))))));
    var var_1 = vec4<i32>(firstLeadingBit(~abs(-71917i & var_0.c.b.x)), 5805i, -(firstLeadingBit(global2.b.x) | global2.b.x), -27751i);
    var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, var_1.x), vec3<i32>(u_input.a.x, 44056i, global2.b.x)) << (_wgslsmith_mod_u32(0u, 37048u) % 32u), global2.b.x, -1i, -_wgslsmith_mod_i32(1i, global2.b.x)), ~(-vec4<i32>(-43026i, global2.b.x, var_1.x, -24584i))), -2147483647i, -var_0.b.b.x, _wgslsmith_div_i32(u_input.a.x, reverseBits(~_wgslsmith_sub_i32(u_input.a.x, 63705i))));
    global0 = array<Struct_1, 13>();
    global2 = Struct_5(vec4<bool>(true, true, any(vec3<bool>(true, global2.a.x, any(global2.a))), any(global2.a)), var_1.wy);
    global1 = countOneBits(func_3(Struct_2(var_0.c.d.x, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.c.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.c, var_0.b.c, var_0.b.c), vec3<u32>(var_0.b.c, 0u, 55243u)), 58413u), 13u)], var_0.b), Struct_2(-1072f, global0[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(_wgslsmith_f_op_vec3_f32(var_0.c.d + vec3<f32>(var_0.c.a.x, -926f, var_0.c.a.x)), -vec2<i32>(var_1.x, -2147483647i), var_0.c.c, vec3<f32>(var_0.c.a.x, var_0.a, 627f)))));
    global1 = ~var_0.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.www, _wgslsmith_add_u32(~var_0.c.c, firstTrailingBit(countOneBits(75775u))), firstTrailingBit((~vec2<u32>(0u, 0u) << ((vec2<u32>(var_0.b.c, 12666u) | vec2<u32>(13025u, var_0.c.c)) % vec2<u32>(32u))) & ~min(vec2<u32>(var_0.c.c, 66682u), vec2<u32>(var_0.b.c, 60437u))));
}

