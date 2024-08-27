struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7>;

var<private> global1: array<Struct_1, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) < _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1375f, arg_1)))));
    var var_1 = Struct_1(all(select(select(select(global0[_wgslsmith_index_u32(u_input.c.x, 7u)], vec3<bool>(true, arg_0.a, var_0.a), arg_0.a), vec3<bool>(arg_0.a, var_0.a, arg_0.a), vec3<bool>(false, false, var_0.a)), select(vec3<bool>(arg_0.a, false, true), global0[_wgslsmith_index_u32(select(4294967295u, 13671u, false), 7u)], !arg_0.a), !(!global0[_wgslsmith_index_u32(u_input.c.x, 7u)]))));
    global0 = array<vec3<bool>, 7>();
    let var_2 = Struct_1(true);
    var var_3 = abs(abs(0u) & u_input.c.x) >> (_wgslsmith_clamp_u32(((1u & u_input.c.x) | 70662u) & ~u_input.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(101601u, u_input.c.x, u_input.c.x, 4294967295u) & vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), ~vec4<u32>(23971u, u_input.c.x, u_input.c.x, 0u)), 1u) % 32u);
    return ~firstLeadingBit(u_input.c.x >> (~44943u % 32u));
}

fn func_2() -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(~u_input.c.x, 7u)];
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 30u)];
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(441f, 1541f)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), 2092f)));
    var var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.c.x ^ ~4294967295u, u_input.c.x, 65300u, max(select(0u, u_input.c.x, var_0.x), func_3(Struct_1(false), var_2))) << (~vec4<u32>(_wgslsmith_sub_u32(3551u, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 4220u, 31697u)), u_input.c.x, _wgslsmith_div_u32(1u, u_input.c.x)) % vec4<u32>(32u)), abs(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.c.x) >> (vec4<u32>(0u, 1u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 17577u)), u_input.c.x, 1u, ~(~u_input.c.x))));
    return vec2<u32>(_wgslsmith_mult_u32(~u_input.c.x, var_4.x), var_4.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_add_vec2_u32(select(vec2<u32>(~(17624u & u_input.c.x), ~4294967295u), _wgslsmith_add_vec2_u32(func_2(), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(31052u, u_input.c.x), vec2<u32>(u_input.c.x, 114824u)), u_input.c, u_input.c)), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), true))), countOneBits(vec2<u32>(~u_input.c.x, reverseBits(1u ^ u_input.c.x))));
    var var_1 = Struct_1(-282f <= _wgslsmith_div_f32(-869f, arg_1));
    var var_2 = any(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c.x, ~countOneBits(u_input.c.x)), 7u)]);
    let var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(-max(1i, reverseBits(-21854i)), 1i), abs(~firstTrailingBit(vec2<i32>(u_input.b.x, 45894i))) << (~_wgslsmith_div_vec2_u32(var_0 << (u_input.c % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(var_0.x, u_input.c.x))) % vec2<u32>(32u)));
    var_2 = any(vec2<bool>(false, !(var_3.x != u_input.b.x) && any(vec2<bool>(true, true))));
    return 843f;
}

fn func_4(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    global0 = array<vec3<bool>, 7>();
    global1 = array<Struct_1, 30>();
    var var_0 = global1[_wgslsmith_index_u32(func_3(Struct_1(_wgslsmith_f_op_f32(arg_0.x - 197f) >= -1000f), -147f) ^ _wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) >> (~u_input.c.x % 32u)), _wgslsmith_add_u32(~abs(u_input.c.x), 4294967295u)), 30u)];
    global0 = array<vec3<bool>, 7>();
    let var_1 = u_input.c.x;
    return global1[_wgslsmith_index_u32(4294967295u, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 7>();
    global1 = array<Struct_1, 30>();
    var var_0 = ~_wgslsmith_div_u32(1u >> (countOneBits(u_input.c.x) % 32u), 8436u) ^ u_input.c.x;
    global0 = array<vec3<bool>, 7>();
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(2005f, 1f, false)), 1605f, _wgslsmith_div_f32(-2246f, _wgslsmith_f_op_f32(func_1(vec3<f32>(-258f, -1000f, 871f), 208f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1569f) - 224f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f * 1764f)), 933f)), _wgslsmith_f_op_f32(func_1(vec3<f32>(1f, 1f, 1f), 1485f)));
    let var_2 = global1[_wgslsmith_index_u32(~u_input.c.x, 30u)];
    global1 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec3<f32>(324f, _wgslsmith_div_f32(-484f, 855f), 924f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -625f), -1145f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1258f, 843f), _wgslsmith_f_op_f32(f32(-1f) * -1028f))))))), ~(~u_input.c.x), ~vec4<i32>(777i, -21425i, ~u_input.d.x, _wgslsmith_mod_i32(u_input.a, 0i)), vec4<u32>(1u, ~u_input.c.x, u_input.c.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, u_input.c.x, 0u, 4294967295u)), ~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x)) | u_input.c.x));
}

