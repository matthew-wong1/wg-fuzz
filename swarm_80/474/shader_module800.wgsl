struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 25>;

var<private> global1: array<Struct_1, 6>;

var<private> global2: vec4<f32> = vec4<f32>(150f, 814f, -1000f, 960f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = vec3<bool>(~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-24090i, -19642i, 38229i), -7164i, ~(-1i)) != -1i, true, true);
    let var_1 = ~vec3<i32>(~17046i, -countOneBits(~1i), _wgslsmith_div_i32(~(-54503i), 2147483647i));
    let var_2 = abs(_wgslsmith_mod_i32(0i, var_1.x));
    global0 = array<vec4<i32>, 25>();
    let var_3 = 26439u;
    return i32(-1i) * -var_1.x;
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<i32>, 25>();
    global0 = array<vec4<i32>, 25>();
    var var_0 = reverseBits(vec2<i32>(-18470i, _wgslsmith_div_i32(func_3(), 0i) | abs(_wgslsmith_add_i32(1814i, 13417i))));
    let var_1 = vec3<i32>(select(~_wgslsmith_clamp_i32(var_0.x, var_0.x, 2147483647i) << (1u % 32u), firstLeadingBit(2147483647i), false), _wgslsmith_dot_vec3_i32((vec3<i32>(var_0.x, 22983i, var_0.x) & abs(vec3<i32>(0i, var_0.x, -1i))) & select(~vec3<i32>(var_0.x, -2147483647i, 9690i), ~vec3<i32>(var_0.x, -26827i, -6155i), any(vec4<bool>(false, false, false, false))), ~(-vec3<i32>(-16235i, var_0.x, var_0.x)) ^ firstTrailingBit(reverseBits(vec3<i32>(2451i, var_0.x, -2147483647i)))), ~var_0.x);
    var var_2 = _wgslsmith_dot_vec3_i32(-vec3<i32>(~var_1.x >> (firstTrailingBit(u_input.a) % 32u), _wgslsmith_clamp_i32(~var_1.x, ~64i, i32(-1i) * -1i), 43433i), vec3<i32>(_wgslsmith_mod_i32(-(~1i), 2147483647i), -43782i, 37815i));
    return global1[_wgslsmith_index_u32(1u, 6u)];
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-global2.x);
    var var_1 = func_2();
    global1 = array<Struct_1, 6>();
    let var_2 = func_2();
    var var_3 = _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -955f));
    return ~_wgslsmith_div_u32(countOneBits(max(1u, u_input.a)), ~_wgslsmith_sub_u32(~1u, ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(i32(-1i) * -reverseBits(29114i)), _wgslsmith_f_op_f32(abs(107f)), (_wgslsmith_mod_u32(4294967295u & u_input.a, ~u_input.a) ^ _wgslsmith_add_u32(_wgslsmith_add_u32(14925u, u_input.a), u_input.a)) & 0u, (vec3<u32>(30216u, ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(0u, u_input.a, 13421u))) >> (~vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, countOneBits(1u), func_1(Struct_2(false), Struct_2(true))), vec3<u32>(20488u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 29428u, 28569u), vec3<u32>(4294967295u, 10429u, 30164u)), ~1u)) % vec3<u32>(32u)));
}

