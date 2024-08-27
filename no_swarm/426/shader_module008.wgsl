struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: u32;

var<private> global2: i32;

var<private> global3: u32 = 0u;

var<private> global4: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: f32, arg_3: f32) -> vec2<u32> {
    global1 = arg_0.c.a;
    let var_0 = _wgslsmith_add_vec4_u32(~(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.a, 138u, arg_0.c.a, 11757u) | vec4<u32>(u_input.b, 4294967295u, 4294967295u, 21072u), vec4<u32>(u_input.b, u_input.e.x, arg_0.c.a, arg_0.c.a) >> (vec4<u32>(48138u, arg_0.c.a, arg_0.c.a, arg_0.c.a) % vec4<u32>(32u))) & vec4<u32>(u_input.b, u_input.e.x, ~28673u, _wgslsmith_clamp_u32(u_input.b, arg_0.c.a, 35324u))), ~(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, arg_0.c.a, 50883u), vec4<u32>(arg_0.c.a, u_input.b, 1u, 56847u)))));
    let var_1 = true;
    var var_2 = !(!select(!select(vec4<bool>(false, var_1, var_1, false), vec4<bool>(false, false, true, false), var_1), !select(vec4<bool>(var_1, false, false, false), vec4<bool>(var_1, var_1, false, var_1), true), vec4<bool>(var_1, true, var_1, any(vec2<bool>(var_1, var_1)))));
    let var_3 = select(true, false, !var_2.x);
    return firstTrailingBit(~(~min(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 43375u), var_0.zx), abs(u_input.e))));
}

fn func_2() -> Struct_1 {
    global3 = 0u;
    let var_0 = u_input.e.x | 1u;
    var var_1 = vec2<u32>(_wgslsmith_div_u32(select(~1u, 85044u, true) ^ firstLeadingBit(~36739u), var_0), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~abs(vec3<u32>(57309u, u_input.b, 53704u)), vec3<u32>(var_0 & var_0, _wgslsmith_dot_vec2_u32(u_input.e, u_input.e), abs(u_input.e.x))), ~vec3<u32>(0u, 0u, u_input.e.x) << (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 53018u, 1u), ~vec3<u32>(0u, u_input.e.x, 1u)) % vec3<u32>(32u))));
    var_1 = _wgslsmith_mult_vec2_u32(func_3(Struct_3(Struct_1(vec2<f32>(1225f, 287f)), ~vec3<i32>(u_input.c, 15494i, global0[_wgslsmith_index_u32(u_input.b, 4u)]), Struct_2(47474u, ~u_input.a.wx, -1000f, u_input.c), 0i, Struct_1(vec2<f32>(-583f, -2065f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -715f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(535f + -1948f)), -534f), 615f, -911f), ~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 4294967295u), vec2<u32>(7679u, 4294967295u) & vec2<u32>(10105u, var_0))));
    let var_2 = 1i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(663f, -717f) + vec2<f32>(-1705f, 706f)))) + vec2<f32>(_wgslsmith_f_op_f32(245f - -2446f), 1000f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(329f, -957f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1228f, -921f) * vec2<f32>(799f, 2146f)), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(902f, 1176f) + vec2<f32>(-1435f, 663f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2047f, -236f) - vec2<f32>(1423f, 1288f))))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    var var_0 = 1259f;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(790f, 457f)))))));
    let var_1 = Struct_3(func_2(), arg_1.zyw, Struct_2(_wgslsmith_mult_u32(~func_3(Struct_3(Struct_1(vec2<f32>(476f, 1310f)), arg_2, Struct_2(42121u, vec2<i32>(0i, u_input.d.x), 1133f, 2147483647i), u_input.c, Struct_1(vec2<f32>(306f, -433f))), vec3<f32>(605f, -260f, -244f), -1039f, 1000f).x, 105677u), _wgslsmith_div_vec2_i32(arg_1.zw, firstTrailingBit(vec2<i32>(52926i, 2147483647i))), _wgslsmith_f_op_f32(min(2628f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(798f)) - _wgslsmith_f_op_f32(f32(-1f) * -230f)))), arg_1.x), max(global0[_wgslsmith_index_u32(u_input.e.x, 4u)], u_input.c), func_2());
    var var_2 = Struct_2(_wgslsmith_add_u32(~4294967295u, 67492u), min(firstTrailingBit(_wgslsmith_sub_vec2_i32(arg_1.yx & vec2<i32>(u_input.d.x, arg_1.x), arg_1.wz & vec2<i32>(1i, 17147i))), vec2<i32>(-47224i >> (u_input.b % 32u), ~var_1.c.b.x) << (vec2<u32>(_wgslsmith_mult_u32(var_1.c.a, u_input.b), _wgslsmith_div_u32(4294967295u, u_input.e.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.c * var_1.c.c)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.a.x * 448f), _wgslsmith_div_f32(var_1.a.a.x, var_1.e.a.x))))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(arg_0, 0i, -12473i), arg_0), arg_1.yx & ((vec2<i32>(u_input.a.x, -18851i) << (u_input.e % vec2<u32>(32u))) | countOneBits(vec2<i32>(9935i, -2147483647i)))));
    var var_3 = -1000f;
    return 4401u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1822f;
    global0 = array<i32, 4>();
    let var_1 = vec3<i32>(~_wgslsmith_div_i32(0i, firstLeadingBit(-15351i)), -(u_input.a.x >> (func_1(-26733i, u_input.a, vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], -2147483647i), global0[_wgslsmith_index_u32(20585u, 4u)]) % 32u)), -(~1i)) >> (vec3<u32>(u_input.b, _wgslsmith_div_u32(~_wgslsmith_add_u32(u_input.b, u_input.b), ~(~u_input.b)), 1u) % vec3<u32>(32u));
    var var_2 = 81999u << (_wgslsmith_add_u32(75613u, _wgslsmith_mod_u32(firstLeadingBit(34440u), u_input.b)) % 32u);
    let var_3 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1115f, 1000f))), -553f)), -vec3<i32>(~global0[_wgslsmith_index_u32(u_input.e.x, 4u)], -(~33979i), -max(u_input.d.x, -80755i)), Struct_2(reverseBits(16043u), firstTrailingBit(~(-var_1.zx)), func_2().a.x, _wgslsmith_mult_i32(-2147483647i, abs(global0[_wgslsmith_index_u32(u_input.e.x, 4u)]))), _wgslsmith_sub_i32(select(var_1.x, -reverseBits(global0[_wgslsmith_index_u32(u_input.b, 4u)]), !select(false, true, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -5710i, var_1.x, global0[_wgslsmith_index_u32(u_input.b, 4u)], ~(-2756i)), reverseBits(u_input.a))), Struct_1(vec2<f32>(_wgslsmith_div_f32(-385f, _wgslsmith_f_op_f32(f32(-1f) * -1438f)), _wgslsmith_f_op_f32(trunc(488f)))));
    global3 = 1u;
    global0 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec4<i32>(_wgslsmith_mod_i32(~(~32749i), -countOneBits(var_1.x)), -var_3.c.d, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(30261i, -1i, var_3.d), vec3<i32>(var_3.b.x, 1i, var_3.d)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), u_input.d)), firstLeadingBit(vec2<i32>(var_1.x, 2147483647i))), _wgslsmith_mod_i32(_wgslsmith_add_i32(var_3.c.b.x, firstTrailingBit(var_1.x)), u_input.c)), abs(max(~vec2<u32>(1u, 17184u), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_3.c.a), vec2<u32>(85458u, 27136u))))), var_3.e.a.x);
}

