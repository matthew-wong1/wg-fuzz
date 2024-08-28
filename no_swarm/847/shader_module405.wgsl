struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: i32;

var<private> global2: Struct_4;

var<private> global3: f32;

var<private> global4: array<vec2<i32>, 30>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec3<u32>) -> vec2<u32> {
    global0 = vec4<i32>(-u_input.a, -u_input.a, i32(-1i) * -1857i, u_input.a);
    let var_0 = Struct_1(!(!vec2<bool>(any(vec4<bool>(false, true, true, true)), select(false, false, true))), 146f, ~abs(vec2<u32>(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(1612u, arg_2.x, arg_2.x)), ~arg_2.x)));
    global2 = arg_1;
    global0 = abs(-select(-_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, u_input.a, 1i, global0.x), vec4<i32>(-1i, global0.x, global0.x, -1i)), ~select(vec4<i32>(2147483647i, u_input.a, 0i, u_input.a), vec4<i32>(global0.x, u_input.a, global0.x, -2147483647i), vec4<bool>(var_0.a.x, false, var_0.a.x, false)), !select(vec4<bool>(var_0.a.x, true, false, false), vec4<bool>(false, var_0.a.x, var_0.a.x, false), true)));
    let var_1 = firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(~arg_2.x, (1u | var_0.c.x) & (arg_2.x | 0u)), ~(~vec2<u32>(arg_2.x, 58893u))));
    return vec2<u32>(var_1.x, _wgslsmith_mult_u32(~(~arg_2.x), var_0.c.x));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = Struct_1(arg_1, global2.a, select(~arg_2, select(~arg_2, func_3(global2.a, Struct_4(-258f), ~vec3<u32>(arg_0, arg_0, arg_0)), vec2<bool>(arg_1.x != arg_1.x, true)), false | arg_1.x));
    var var_1 = Struct_3(~12898u | arg_0, any(vec4<bool>(any(select(vec4<bool>(arg_1.x, arg_1.x, true, false), vec4<bool>(arg_1.x, arg_1.x, var_0.a.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, true))), (var_0.b >= -1909f) && var_0.a.x, true, !arg_1.x)), -653f >= _wgslsmith_div_f32(var_0.b, -2681f), -1250f);
    var var_2 = Struct_4(1000f);
    global2 = Struct_4(var_1.d);
    return var_0.a;
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_1(select(!vec2<bool>(select(false, true, false), true), func_2(_wgslsmith_div_u32(~4294967295u, 21821u), vec2<bool>(true, true), vec2<u32>(0u, ~55692u)), func_2(0u, func_2(_wgslsmith_div_u32(48290u, 1u), vec2<bool>(false, true), vec2<u32>(35582u, 51798u)), ~vec2<u32>(48421u, 29739u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a * 129f), _wgslsmith_f_op_f32(-global2.a))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1736f + _wgslsmith_div_f32(global2.a, global2.a))), Struct_4(global2.a), vec3<u32>(func_3(global2.a, Struct_4(-471f), vec3<u32>(4158u, 4294967295u, 10906u)).x, ~2470u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u))) & vec3<u32>(33699u, ~18457u, ~6244u)));
    var var_1 = Struct_4(global2.a);
    global1 = _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-75937i, u_input.a), reverseBits(1i)) ^ global0.x, _wgslsmith_mod_i32(global0.x, global0.x)) >> (var_0.c.x % 32u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1810f))))) + -724f);
    var var_3 = 407f;
    return ~_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(29037i, 3081i), global0.x << (var_0.c.x % 32u)), countOneBits(2147483647i), -firstLeadingBit(49100i)), firstLeadingBit(~vec4<i32>(-73882i, 0i, 286i, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<i32>, 30>();
    global4 = array<vec2<i32>, 30>();
    let var_0 = ~_wgslsmith_dot_vec4_i32(func_1(), vec4<i32>(func_1().x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, global0.x, -55104i), vec4<i32>(-8149i, global0.x, global0.x, global0.x)), max(0i, global0.x), u_input.a << (13919u % 32u)) ^ abs(-vec4<i32>(u_input.a, -18345i, 0i, 1i)));
    var var_1 = _wgslsmith_f_op_f32(202f * -514f);
    let var_2 = Struct_3(_wgslsmith_mult_u32(1u, 4294967295u), true, all(select(vec2<bool>(true, true), vec2<bool>(false, global0.x < global0.x), vec2<bool>(true, true))), global2.a);
    global2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -154f));
    var var_3 = ~(~(max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(var_2.a, 35203u, var_2.a)), var_2.a) & (~var_2.a >> (max(26999u, var_2.a) % 32u))));
    let var_4 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), !func_2(var_2.a ^ var_2.a, !vec2<bool>(false, var_2.c), vec2<u32>(var_2.a, 67682u) << (vec2<u32>(var_2.a, 4294967295u) % vec2<u32>(32u)))), var_2.d, _wgslsmith_mod_vec2_u32(select(~vec2<u32>(var_2.a, 1u), select(vec2<u32>(52413u, 1u), vec2<u32>(var_2.a, 1u), true) | ~vec2<u32>(0u, 33114u), any(vec2<bool>(true, true))), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(57636u, var_2.a), _wgslsmith_mult_u32(var_2.a, 56642u)), 50712u)));
    let var_5 = Struct_2(~var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(38192u);
}

