struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec3<u32> {
    var var_0 = ~u_input.d;
    global1 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-117f, -652f)), 942f, _wgslsmith_f_op_f32(select(605f, 996f, true))))));
    var var_2 = -2147483647i;
    let var_3 = -countOneBits(_wgslsmith_div_i32(-countOneBits(-48386i), 1i));
    return ~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.d, arg_1, u_input.a.x) << (~vec3<u32>(arg_1, arg_1, 4294967295u) % vec3<u32>(32u))), vec3<u32>(7384u >> (arg_1 % 32u), _wgslsmith_div_u32(u_input.d, 1u), ~arg_1), vec3<u32>(23222u, _wgslsmith_clamp_u32(u_input.c.x, 8389u, 23067u) | u_input.b, max(u_input.c.x, u_input.a.x) & firstLeadingBit(4294967295u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    global1 = ~_wgslsmith_dot_vec4_u32(min(~vec4<u32>(85789u, u_input.a.x, u_input.a.x, 1u), min(~vec4<u32>(arg_0.c.x, 4294967295u, 20011u, arg_0.c.x), countOneBits(vec4<u32>(25096u, 50054u, 4294967295u, 1u)))), vec4<u32>(~select(5979u, arg_1.d, true), 39559u, arg_3.c.x, reverseBits(~u_input.c.x)));
    let var_0 = i32(-1i) * -6208i;
    global2 = array<Struct_1, 16>();
    global0 = arg_0.b.x;
    let var_1 = Struct_1(true, -(vec3<i32>(-1i) * -(vec3<i32>(33043i, 0i, -2147483647i) >> (vec3<u32>(arg_0.c.x, u_input.b, arg_0.c.x) % vec3<u32>(32u)))), ~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, 1u, arg_2.x)), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(1u, 0u, arg_0.d)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_3.c.x, arg_0.c.x, arg_2.x), arg_2), arg_2)), 0u);
    return 80836u;
}

fn func_2(arg_0: bool) -> bool {
    global2 = array<Struct_1, 16>();
    var var_0 = Struct_1(true, _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -46362i, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(-4179i, 2147483647i), vec2<i32>(2147483647i, -6289i))), -2147483647i), _wgslsmith_sub_vec3_i32(~firstLeadingBit(vec3<i32>(4182i, 2147483647i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-63107i, -2147483647i, -3325i) << (vec3<u32>(u_input.c.x, 1u, u_input.d) % vec3<u32>(32u)), vec3<i32>(-13577i, 21605i, 25995i), select(vec3<i32>(1i, -2147483647i, -1i), vec3<i32>(-1i, -31209i, 46878i), false)))), ~firstLeadingBit(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c.x, 34285u, 21750u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(u_input.b, u_input.a.x, 106850u)), vec3<u32>(13855u, 25201u, u_input.a.x))), func_4(Struct_1(arg_0, firstTrailingBit(~vec3<i32>(21671i, -716i, 2147483647i)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 29137u, 87814u), vec3<u32>(u_input.b, 0u, u_input.d)), _wgslsmith_sub_u32(max(75352u, 49823u), 1u)), Struct_1(true, -vec3<i32>(-17906i, 0i, -1i) << (vec3<u32>(u_input.d, 0u, 0u) % vec3<u32>(32u)), func_3(false | arg_0, u_input.a.x), _wgslsmith_add_u32(~u_input.d, firstTrailingBit(4294967295u))), vec3<u32>(~countOneBits(u_input.a.x), 0u, 1u), global2[_wgslsmith_index_u32(~u_input.c.x, 16u)]));
    var var_1 = Struct_1(false, vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.b.x, -1i, -2147483647i, 16768i), min(~vec4<i32>(2147483647i, -76064i, -7416i, 0i), abs(vec4<i32>(0i, var_0.b.x, 1i, 1i)))), -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_0.b.x, var_0.b.x, 18999i, -11382i)), countOneBits(vec4<i32>(var_0.b.x, -27800i, var_0.b.x, var_0.b.x))), 0i), firstLeadingBit(var_0.c), u_input.c.x);
    var_1 = Struct_1(!var_1.a, var_0.b, ~_wgslsmith_sub_vec3_u32(var_0.c, ~var_0.c), 1u);
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = all(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true)), vec4<bool>(all(vec4<bool>(true, true, true, true)), false, select(true, true, false), func_2(false)), vec4<bool>(true, u_input.c.x > 62042u, true, true))) && true;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-758f, 1139f, 699f, -1200f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1788f, -1000f, 363f, 277f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(278f, 105f, -143f, -449f)))))), !select(!select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, var_0, false, true), var_0), !select(vec4<bool>(false, true, true, var_0), vec4<bool>(true, var_0, var_0, var_0), var_0), !all(vec3<bool>(false, var_0, false)))));
    global2 = array<Struct_1, 16>();
    let var_2 = any(select(!vec3<bool>(!var_0, true, true), vec3<bool>(all(!vec3<bool>(false, var_0, var_0)), !(var_1.x > var_1.x), any(select(vec4<bool>(false, false, var_0, false), vec4<bool>(true, var_0, true, false), vec4<bool>(var_0, false, true, true)))), any(select(select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, false)), !vec3<bool>(var_0, true, var_0), true))));
    global0 = 1i;
    return global2[_wgslsmith_index_u32(max(countOneBits(0u), firstLeadingBit(_wgslsmith_mod_u32(~u_input.b >> (65570u % 32u), u_input.a.x))), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -2147483647i;
    global2 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(142f, 331f, 188f), vec3<f32>(1209f, 713f, 1694f)))) + vec3<f32>(-546f, _wgslsmith_f_op_f32(-559f + -1000f), 901f)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 516f, -938f))));
    let var_1 = func_1();
    global0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(~2147483647i, var_1.b.x), _wgslsmith_add_i32(abs(32484i), reverseBits(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~var_1.c, vec3<u32>(1u, 6194u, 39795u)), 7957u), var_1.c.xy), var_1.b.zy, 6219u, 1i, u_input.c.x);
}

