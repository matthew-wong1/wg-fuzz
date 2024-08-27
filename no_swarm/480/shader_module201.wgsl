struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<i32, 1>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: i32) -> f32 {
    var var_0 = abs(vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(u_input.a), ~17474u), ~u_input.a, _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)) << (vec3<u32>(u_input.a, 0u, 22028u) % vec3<u32>(32u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, 74918u), ~vec3<u32>(u_input.a, 37199u, u_input.a))));
    return -343f;
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = array<Struct_2, 6>();
    global1 = array<i32, 1>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(-1685f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(285f)) + -885f) - 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1601f), _wgslsmith_f_op_f32(1964f * _wgslsmith_f_op_f32(max(483f, 1160f))))) + _wgslsmith_f_op_f32(1601f + _wgslsmith_f_op_f32(func_2(Struct_4(arg_0.d), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, 1i), vec3<i32>(-2147483647i, arg_0.d.a.x, 2147483647i)), ~(-2147483647i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1065f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1874f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), false)), _wgslsmith_f_op_f32(func_2(Struct_4(arg_0.d), -vec3<i32>(18554i, 2147483647i, -2147483647i), u_input.c.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -216f, -432f, 1167f), vec4<f32>(1000f, -747f, 1406f, -1473f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(346f, 537f, var_0.x, -1282f) + vec4<f32>(344f, -912f, -1000f, var_0.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-550f, -700f, -1304f, -151f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-478f, var_0.x, var_0.x, -907f) + vec4<f32>(303f, var_0.x, var_0.x, -777f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x, -2310f))));
    global1 = array<i32, 1>();
    return arg_0.b | 1u;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec3<f32>) -> vec4<u32> {
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -192f)), _wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, arg_3.x)), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(trunc(arg_3.x)))), vec4<f32>(_wgslsmith_f_op_f32(min(arg_3.x, _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - -261f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2265f, -1098f, arg_2.x, -1250f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1672f, arg_3.x, arg_2.x, 1396f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1226f, -282f, arg_2.x, 258f), vec4<f32>(986f, arg_3.x, arg_3.x, -481f)))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_4(arg_1.d), vec3<i32>(-2147483647i, arg_1.a.x, 17397i), 1i)))), 1f, arg_2.x, 373f), true)));
    var var_1 = -940f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1102f)), _wgslsmith_f_op_f32(f32(-1f) * -233f))) - -986f));
    return _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>((u_input.a >> (u_input.a % 32u)) << (~0u % 32u), ~4294967295u & (u_input.a << (arg_1.b % 32u)), _wgslsmith_mult_u32(func_3(arg_1), arg_1.b), firstLeadingBit(countOneBits(arg_1.b)))), max(vec4<u32>(func_3(Struct_3(arg_1.a, 0u, vec3<u32>(34158u, u_input.a, 23085u), global0[_wgslsmith_index_u32(0u, 6u)], arg_1.e)), _wgslsmith_div_u32(arg_1.c.x, ~u_input.a), countOneBits(u_input.a & 33956u), ~(~8464u)), ~firstLeadingBit(vec4<u32>(82076u, 16049u, 27494u, arg_1.b)) ^ _wgslsmith_clamp_vec4_u32(select(vec4<u32>(11293u, arg_1.c.x, 77502u, u_input.a), vec4<u32>(arg_1.b, 1u, 43048u, u_input.a), arg_1.e), ~vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a), vec4<u32>(2813u, 0u, arg_1.c.x, 36744u) ^ vec4<u32>(4294967295u, 0u, arg_1.c.x, 37540u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    let var_0 = !vec3<bool>(true, (-19236i | -u_input.d) >= -countOneBits(u_input.b), any(vec4<bool>(true, true, true, true)));
    global0 = array<Struct_2, 6>();
    var var_1 = Struct_3(((-vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], 3316i, 384i, global1[_wgslsmith_index_u32(19973u, 1u)]) >> ((vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) << (vec4<u32>(20622u, u_input.a, 1u, 25333u) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (abs(~vec4<u32>(u_input.a, 31357u, u_input.a, u_input.a)) % vec4<u32>(32u))) << (countOneBits(func_1(_wgslsmith_div_i32(1i, -1i), Struct_3(vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(u_input.a, 1u)], -2147483647i, -2147483647i), u_input.a, vec3<u32>(u_input.a, u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 6u)], var_0.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-590f, 1761f))), _wgslsmith_div_vec3_f32(vec3<f32>(-959f, -155f, -1772f), vec3<f32>(791f, -1000f, 1000f)))) % vec4<u32>(32u)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(8252u, 68279u, 0u, 4294967295u) << (vec4<u32>(u_input.a, 87469u, 1u, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 0u, u_input.a, 1u)), u_input.a, min(~4294967295u, ~u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, abs(~u_input.a)), ~func_1(-43409i, Struct_3(vec4<i32>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)], 8261i, u_input.c.x), u_input.a, vec3<u32>(4294967295u, u_input.a, 0u), Struct_2(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], 17116i, global1[_wgslsmith_index_u32(1u, 1u)], -65258i)), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(347f, -853f)), vec3<f32>(746f, -378f, -1671f)).xww), Struct_2(~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.c.x, u_input.d), vec4<i32>(u_input.d, global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(79017u, 1u)])), -vec4<i32>(u_input.d, 1i, 1i, 7321i))), !any(var_0.yy));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, -377f, var_1.a);
}

