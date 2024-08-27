struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global1: array<Struct_3, 32>;

var<private> global2: array<i32, 15>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_3(max(~min(1u, u_input.a), 5623u), arg_1.a.a, vec4<i32>(~abs(-44927i), -1i, _wgslsmith_sub_i32(1i, u_input.c), 1i));
    let var_1 = arg_1.b.x;
    let var_2 = arg_1;
    global1 = array<Struct_3, 32>();
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -926f);
    return select(!(!vec4<bool>(true, any(vec2<bool>(arg_2.a, false)), true, var_0.b)), !select(!(!vec4<bool>(true, arg_2.a, arg_1.e, var_0.b)), vec4<bool>(true, false, true, any(vec3<bool>(var_2.a.a, var_0.b, true))), select(vec4<bool>(true, false, var_2.e, var_2.a.a), select(vec4<bool>(arg_1.e, var_2.a.a, var_0.b, arg_2.a), vec4<bool>(false, false, true, var_0.b), vec4<bool>(true, var_0.b, true, arg_2.a)), vec4<bool>(true, true, true, false))), false);
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = vec2<bool>(true, true);
    global2 = array<i32, 15>();
    global0 = array<Struct_1, 21>();
    var var_1 = Struct_1(false);
    global1 = array<Struct_3, 32>();
    return Struct_2(Struct_1(true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(402f, -1140f, -570f, 1000f) - vec4<f32>(663f, 1748f, 2056f, -607f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-719f, 407f, 1511f, 1204f))) * vec4<f32>(-301f, 1000f, 1859f, 1195f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1326f, 1100f, -635f))) + vec3<f32>(-1744f, -243f, -1903f))), select(~_wgslsmith_div_vec4_i32(u_input.e, vec4<i32>(u_input.e.x, -9912i, 1386i, 6148i)) ^ (firstTrailingBit(u_input.e) << (reverseBits(vec4<u32>(u_input.a, arg_0, 4294967295u, 20663u)) % vec4<u32>(32u))), ~u_input.e, func_3(vec2<i32>(-37i, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.a, 15u)], 2147483647i)), Struct_2(Struct_1(var_1.a), vec4<f32>(823f, -886f, 770f, -769f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-988f, 1737f, 350f) * vec3<f32>(678f, -587f, -1382f)), u_input.e, !var_0.x), Struct_1(true))), !var_0.x);
}

fn func_1() -> vec3<f32> {
    global1 = array<Struct_3, 32>();
    global1 = array<Struct_3, 32>();
    var var_0 = func_2(_wgslsmith_clamp_u32(~(1796u >> (u_input.a % 32u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u) ^ vec2<u32>(47409u, 50014u), ~vec2<u32>(u_input.a, u_input.d)), ~(~1u), ~1782u));
    var var_1 = Struct_3((~u_input.d << (u_input.d % 32u)) << (u_input.d % 32u), true, u_input.e);
    var var_2 = ~_wgslsmith_mult_u32(42416u >> (~(~var_1.a) % 32u), _wgslsmith_div_u32(firstLeadingBit(14483u) & u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(var_1.a, 1u) ^ vec2<u32>(4294967295u, 0u))));
    return vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-675f, _wgslsmith_f_op_f32(-1756f + 1000f)))))), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1()))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -231f)), _wgslsmith_div_f32(375f, _wgslsmith_f_op_f32(ceil(1967f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2080f + 516f)))));
    var var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i << ((u_input.a ^ 44066u) % 32u), ~firstLeadingBit(1i)), u_input.e.xw, vec2<i32>(~u_input.b.x, 0i)), vec2<i32>(-2147483647i, u_input.c));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 304f, var_0.x) + vec3<f32>(583f, var_0.x, -421f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1353f), vec3<f32>(-1011f, var_0.x, var_0.x)), vec3<bool>(all(vec4<bool>(false, true, false, false)), false, true)))) - vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(119202u).c.x));
    let var_2 = vec3<u32>(max(_wgslsmith_mod_u32((u_input.a | 1u) << (~u_input.d % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 18707u, u_input.a) & vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(u_input.d, u_input.d, 33842u))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, 4294967295u), firstLeadingBit(57884u), _wgslsmith_clamp_u32(0u, u_input.a, 1u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, 42009u), vec3<u32>(u_input.d, 15406u, u_input.a)))), u_input.a, countOneBits(_wgslsmith_add_u32(0u, max(4294967295u, _wgslsmith_sub_u32(1u, u_input.a)))));
    var var_3 = func_3(firstLeadingBit(u_input.b.xx), func_2(u_input.a), Struct_1(true)).x;
    global2 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(44771u, u_input.d, var_2.x, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(1012u, u_input.d, 1u, u_input.d), vec4<u32>(15357u, u_input.a, 1u, var_2.x)))));
}

