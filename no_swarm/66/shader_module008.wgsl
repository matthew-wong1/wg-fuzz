struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-3382i, 13677i, -1432f, vec2<bool>(false, true), -477f), Struct_1(-4522i, 53359i, -528f, vec2<bool>(true, true), -773f), Struct_1(-7151i, 0i, -510f, vec2<bool>(false, false), 288f), Struct_1(0i, 2147483647i, -1000f, vec2<bool>(false, false), -1905f), Struct_1(6737i, 0i, 508f, vec2<bool>(false, false), -533f));

var<private> global1: Struct_1;

var<private> global2: vec4<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> vec4<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1090f), global1.e, _wgslsmith_f_op_f32(-global2.x), -600f);
    global0 = array<Struct_1, 5>();
    let var_1 = _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(~(~u_input.a.x), 2769u));
    let var_2 = vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, -_wgslsmith_mod_i32(-arg_0.x, 26886i), ~global1.b), global1.b, max(u_input.c, -58038i), arg_0.x);
    let var_3 = select(_wgslsmith_clamp_vec4_u32(~u_input.a, u_input.a, vec4<u32>(var_1, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, 76062u), _wgslsmith_mod_u32(14171u, var_1)), u_input.a.x, u_input.a.x)), ~(vec4<u32>(u_input.a.x, firstLeadingBit(0u), _wgslsmith_div_u32(95925u, 1u), ~1u) | (vec4<u32>(11419u, 32643u, 57261u, var_1) | vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x))), any(select(select(select(vec3<bool>(false, false, global1.d.x), vec3<bool>(false, true, global1.d.x), global1.d.x), select(vec3<bool>(false, true, global1.d.x), vec3<bool>(false, false, true), false), all(vec3<bool>(global1.d.x, global1.d.x, false))), !select(vec3<bool>(global1.d.x, global1.d.x, global1.d.x), vec3<bool>(global1.d.x, global1.d.x, global1.d.x), true), global1.d.x)));
    return vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.xy, firstLeadingBit(~(var_2.zz | vec2<i32>(2147483647i, -2147483647i)))), _wgslsmith_add_i32(-2147483647i >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.a, u_input.a), ~u_input.a) % 32u), -u_input.c), 41857i, -1i);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.x, 5u)];
    let var_1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i ^ firstLeadingBit(global1.a), (u_input.b >> (0u % 32u)) << (max(0u, u_input.a.x) % 32u)), 24604i), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))), !(!global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))))));
    let var_2 = vec3<i32>(_wgslsmith_mult_i32(-global1.a, -1i), u_input.c, firstLeadingBit(-_wgslsmith_sub_i32(0i, u_input.c) ^ 69311i));
    global2 = arg_1;
    var var_3 = vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -2064i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2619i, global1.a, -14498i, -17876i), vec4<i32>(2147483647i, global1.b, var_0.a, 2147483647i)) ^ vec4<i32>(var_0.a, u_input.b, -1i, 0i), -func_3(vec3<i32>(5348i, 3821i, var_0.a)))), abs(-_wgslsmith_clamp_i32(global1.b, -var_0.b, _wgslsmith_add_i32(-10818i, var_0.b))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1990u, arg_0.x | _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 26047u, 36936u), vec4<u32>(1u, 47335u, 1u, arg_3.x)), ~u_input.a.x), 18477u), min(vec4<u32>(arg_3.x, 17163u, min(31793u, ~arg_3.x), arg_3.x), ~vec4<u32>(36731u, _wgslsmith_clamp_u32(arg_3.x, 0u, u_input.a.x), firstLeadingBit(0u), 1u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = Struct_1(global1.a, u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, arg_1.c) + _wgslsmith_f_op_f32(-arg_1.e)))), !(!(!(!vec2<bool>(arg_1.d.x, global1.d.x)))), _wgslsmith_div_f32(global1.e, global1.e));
    global1 = global0[_wgslsmith_index_u32(u_input.a.x, 5u)];
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    return ~_wgslsmith_dot_vec4_u32(~max(max(vec4<u32>(1u, u_input.a.x, 67288u, 18211u), u_input.a), ~u_input.a), vec4<u32>(func_2(vec4<u32>(30594u, u_input.a.x, 1u, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.a.x, 10825u, 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e, global2.x, arg_1.e, var_0.e)), -855f, u_input.a.yxy), u_input.a.x, 1u, ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global0 = array<Struct_1, 5>();
    let var_1 = _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(select(0u, 80492u, global1.d.x), func_1(vec4<i32>(-62109i, var_0, u_input.c, global1.b), Struct_1(u_input.b, var_0, 1158f, global1.d, global1.c), false)), ~(~u_input.a.x), 20172u), reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 30854u, 4294967295u, u_input.a.x), u_input.a, vec4<u32>(13106u, select(41874u, u_input.a.x, false), 4294967295u, _wgslsmith_clamp_u32(1u, u_input.a.x, 4294967295u)))));
    var var_2 = u_input.b;
    var var_3 = -86410i;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(var_0, (u_input.b | 47396i) << (var_1.x % 32u), ~(-var_0), global1.a), var_1.x, ~_wgslsmith_add_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, u_input.c, global1.a, 36136i), vec4<i32>(u_input.b, u_input.b, -59740i, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(38391i, 1076i, u_input.c, 2147483647i), vec4<i32>(-2147483647i, global1.a, 2147483647i, -2147483647i))), abs(reverseBits(vec4<i32>(1i, var_0, 2147483647i, -2147483647i)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1220f, _wgslsmith_f_op_f32(f32(-1f) * -414f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(1795f))))));
}

