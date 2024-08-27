struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: f32 = 566f;

var<private> global2: f32 = 1515f;

var<private> global3: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(23068i, -25918i), vec2<i32>(1i, -45223i), vec2<i32>(i32(-2147483648), -27280i), vec2<i32>(2147483647i, -1i), vec2<i32>(-74407i, 6775i), vec2<i32>(-1i, -12417i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(4717i, -20035i), vec2<i32>(-32460i, 1255i), vec2<i32>(-43052i, -1i), vec2<i32>(34930i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(13252i, 12639i), vec2<i32>(-14441i, 0i), vec2<i32>(-4947i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(13461i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, -4624i), vec2<i32>(32169i, -18907i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, 64906i), vec2<i32>(-25749i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-32224i, -1i), vec2<i32>(-1i, 8931i), vec2<i32>(6725i, 52395i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(62365i, 8931i), vec2<i32>(2147483647i, 1i));

var<private> global4: array<vec2<u32>, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-522f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2684f, 513f))), 1f))));
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, 46996u, u_input.a, 4294967295u)), vec4<u32>(_wgslsmith_clamp_u32(abs(1u), max(34072u, 4294967295u), 38511u), u_input.a, ~(~u_input.a), 106909u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, ~37412u), vec3<u32>(u_input.a << (25974u % 32u), 33467u, 4294967295u) | ~firstTrailingBit(vec3<u32>(59060u, 0u, u_input.c))), u_input.a, u_input.c);
    global4 = array<vec2<u32>, 6>();
    var var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true));
    var var_2 = arg_0.a.x;
    return _wgslsmith_mod_i32(arg_0.a.x, _wgslsmith_mod_i32(arg_0.a.x, firstLeadingBit(1i)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec2<i32>) -> i32 {
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(0i, -(-1i & arg_2.x)), _wgslsmith_div_i32(abs(41540i), _wgslsmith_clamp_i32(22101i, arg_0, 0i)) & 1i, _wgslsmith_clamp_i32(1i, firstTrailingBit(-1i), arg_1.x)), arg_1.zy);
    let var_1 = global0[_wgslsmith_index_u32(8695u, 27u)];
    var var_2 = 33233u;
    var var_3 = _wgslsmith_add_vec4_u32(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(32237u, 15744u, 0u, 36448u), vec4<u32>(9083u, 37278u, u_input.a, u_input.a)), vec4<u32>(105020u, 4294967295u, u_input.c, u_input.c), true), countOneBits(vec4<u32>(0u, u_input.c, u_input.c, abs(1u)))) ^ vec4<u32>(abs(u_input.c), ~(~16337u), u_input.c, _wgslsmith_mod_u32(u_input.a, 114529u));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -2052f);
    return ~(u_input.b.x << (abs(~firstTrailingBit(var_3.x)) % 32u));
}

fn func_2() -> i32 {
    global0 = array<Struct_1, 27>();
    let var_0 = Struct_1(vec3<i32>(-9507i, abs(countOneBits(11055i) | func_3(48165i, vec3<i32>(u_input.b.x, 0i, 2147483647i), vec2<i32>(-21131i, u_input.b.x))), u_input.b.x), -select(vec2<i32>(u_input.d & -2147483647i, _wgslsmith_div_i32(71867i, u_input.b.x)), global3[_wgslsmith_index_u32(1u, 32u)], !(1i >= u_input.d)));
    let var_1 = Struct_1(reverseBits(var_0.a), -global3[_wgslsmith_index_u32(u_input.a, 32u)]);
    let var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~22347u, ~u_input.a) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.a), global4[_wgslsmith_index_u32(abs(5029u), 6u)]) % vec2<u32>(32u)), vec2<u32>(~(~19711u), ~firstLeadingBit(u_input.a))), 49891u);
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-922f, -644f))))));
    return _wgslsmith_div_i32(_wgslsmith_mult_i32(var_0.b.x, u_input.b.x) ^ var_1.b.x, -_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, -16355i), var_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 32>();
    global0 = array<Struct_1, 27>();
    var var_0 = vec4<i32>(47233i, i32(-1i) * -u_input.d, _wgslsmith_add_i32(-1i, u_input.d), func_1(global0[_wgslsmith_index_u32(u_input.c, 27u)]));
    global3 = array<vec2<i32>, 32>();
    let var_1 = vec4<i32>(10862i, ~(-(~u_input.d)), -_wgslsmith_dot_vec2_i32(~abs(u_input.b), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.xz, vec2<i32>(var_0.x, -1i)), vec2<i32>(-126976i, -3513i))), _wgslsmith_add_i32(func_1(global0[_wgslsmith_index_u32(u_input.c, 27u)]), firstLeadingBit(func_2() & 22052i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(var_0.zxw, var_1.ywy));
}

