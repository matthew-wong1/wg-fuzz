struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 1i);

var<private> global1: vec3<i32>;

var<private> global2: i32 = -23010i;

var<private> global3: f32 = 1209f;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = Struct_3(2147483647i, vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.c.x))), -1000f, _wgslsmith_f_op_f32(max(-1000f, 110f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, arg_2.a)), i32(-1i) * -2147483647i);
    global0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global1.yz, global1.yz), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(countOneBits(1157i), global1.x), -(40025i ^ var_0.a), -global1.x)), 2147483647i);
    global0 = reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.x, -29288i) >> ((_wgslsmith_sub_vec2_u32(u_input.c.yy, u_input.c.yz) ^ vec2<u32>(u_input.c.x, 3986u)) % vec2<u32>(32u)), ~global1.xy));
    var var_1 = Struct_2(arg_2, ~(~countOneBits(~vec3<u32>(u_input.d, 44876u, 4294967295u))), arg_2);
    return vec4<u32>(31015u, ~var_1.b.x, ~0u & u_input.d, abs(var_1.b.x)) >> (abs(_wgslsmith_add_vec4_u32(~vec4<u32>(54741u, 4294967295u, u_input.d, u_input.d), max(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 21343u, 4294967295u, u_input.c.x), vec4<u32>(0u, u_input.c.x, 0u, 13148u)), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, u_input.d, u_input.c.x))))) % vec4<u32>(32u));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(reverseBits(u_input.d), u_input.c.x), u_input.c.x & countOneBits(~(~0u)), _wgslsmith_div_u32(abs((u_input.c.x & 9589u) ^ select(u_input.d, 4294967295u, false)), 24721u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(-1678f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-893f, 274f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1518f - 2557f))), true))), ~(vec3<u32>(u_input.d >> (14127u % 32u), _wgslsmith_div_u32(60768u, 14747u), u_input.c.x) >> (vec3<u32>(~u_input.c.x, ~1u, _wgslsmith_add_u32(u_input.d, 31176u)) % vec3<u32>(32u))), Struct_1(168f, -1189f));
    global2 = -2147483647i;
    let var_2 = Struct_3(_wgslsmith_clamp_i32(u_input.a, 1i, global1.x) | countOneBits(~(-global0.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(326f, var_1.a.a, -175f, var_1.c.b))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1097f, 1960f)))))))), _wgslsmith_add_i32(_wgslsmith_sub_i32(max(-2147483647i, u_input.a), ~18834i), -global1.x));
    global0 = vec2<i32>(global0.x, global1.x);
    return var_1.b.x;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(38412u, 49656u, u_input.c.x, u_input.d), func_2(vec2<bool>(true, false), Struct_3(67036i, vec4<f32>(213f, -532f, 438f, -1000f), vec2<f32>(828f, 690f), u_input.a), Struct_1(-284f, 1786f))), countOneBits(vec4<u32>(u_input.c.x, 0u, 0u, u_input.d))), ~firstTrailingBit(vec4<u32>(~0u, abs(4294967295u), func_3(), _wgslsmith_div_u32(u_input.d, u_input.c.x))));
    global1 = _wgslsmith_mod_vec3_i32(min(vec3<i32>(0i, u_input.b, _wgslsmith_add_i32(global0.x, global1.x)), vec3<i32>(2147483647i, _wgslsmith_sub_i32(-500i, global1.x), min(~global1.x, abs(global0.x)))), -_wgslsmith_div_vec3_i32(vec3<i32>(27166i, 545i, 0i) >> (vec3<u32>(var_0.x, 4294967295u, var_0.x) % vec3<u32>(32u)), vec3<i32>(global0.x, global0.x, -26136i) << (vec3<u32>(u_input.d, var_0.x, u_input.d) % vec3<u32>(32u))) & ~firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, global0.x, global1.x), vec3<i32>(-2147483647i, global1.x, u_input.b), vec3<i32>(-2147483647i, 0i, u_input.b))));
    var var_1 = ~countOneBits(~select(vec4<i32>(2147483647i, 30652i, 2147483647i, global0.x), vec4<i32>(-13067i, global1.x, 28402i, 1i), vec4<bool>(false, true, true, false))) << (vec4<u32>(4294967295u, u_input.d | ~22623u, _wgslsmith_mod_u32(~var_0.x, firstTrailingBit(1u)), _wgslsmith_add_u32(~1u, select(_wgslsmith_div_u32(4294967295u, var_0.x), _wgslsmith_mult_u32(18178u, 1u), true))) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(2045f - _wgslsmith_f_op_f32(floor(596f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1())));
    global2 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(ceil(1038f));
    var var_2 = !(!(~u_input.c.x < 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~(global0.x & ((global1.x >> (22767u % 32u)) << (~u_input.c.x % 32u))), vec4<u32>(u_input.c.x, _wgslsmith_div_u32(81909u, ~_wgslsmith_clamp_u32(23157u, u_input.d, u_input.d)), ~u_input.d, firstTrailingBit(_wgslsmith_sub_u32(4294967295u, u_input.c.x)) | 2531u), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f) - 292f), var_1, var_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1171f + var_1), -200f))))));
}

