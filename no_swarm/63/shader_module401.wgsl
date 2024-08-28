struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32 = 80011u;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global0 = Struct_2(~global0.a, global0.b);
    let var_0 = Struct_3(0i, Struct_2(vec4<u32>(global0.b.a.x, global0.a.x, 21629u, 1u), global0.b));
    let var_1 = _wgslsmith_mod_i32(23870i, _wgslsmith_dot_vec3_i32(vec3<i32>(select(-1i, u_input.a & u_input.a, true), global0.b.c, ~754i), vec3<i32>(~u_input.a, -reverseBits(25523i), var_0.b.b.c)));
    var var_2 = firstLeadingBit(_wgslsmith_div_i32(abs(var_1), 2147483647i));
    var var_3 = !select(vec2<bool>(false, false), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), all(vec2<bool>(true, true))), select(vec2<bool>(any(vec4<bool>(false, false, false, false)), any(vec3<bool>(true, true, false))), vec2<bool>(true, all(vec3<bool>(true, true, false))), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
    return all(!(!select(vec3<bool>(true, true, true), !vec3<bool>(true, false, var_3.x), select(vec3<bool>(var_3.x, true, false), vec3<bool>(false, false, var_3.x), vec3<bool>(false, true, false)))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.d, arg_2.d, arg_2.d)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.d, -936f, 1707f) * vec3<f32>(arg_0, arg_2.d, -1293f)))))));
    global0 = Struct_2(max(select(global0.a, vec4<u32>(global0.a.x, 1u, max(arg_2.a.x, global0.a.x), 0u), vec4<bool>(any(vec3<bool>(true, false, true)), func_3(), true, true)), ~_wgslsmith_clamp_vec4_u32(global0.a >> (global0.a % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(global0.a, vec4<u32>(arg_3, arg_3, 36735u, arg_3)), vec4<u32>(1u, arg_3, global0.a.x, global0.a.x))), Struct_1(_wgslsmith_mod_vec3_u32(firstLeadingBit(arg_2.a), vec3<u32>(global0.b.a.x, arg_2.a.x, _wgslsmith_mult_u32(global0.b.a.x, 75006u))), -1i, -1i, 1186f));
    var var_1 = Struct_4(Struct_2(_wgslsmith_mod_vec4_u32(global0.a, min(global0.a, ~global0.a)), Struct_1(~vec3<u32>(arg_3, global0.a.x, 32786u), firstLeadingBit(2147483647i), ~countOneBits(2030i), global0.b.d)), Struct_1(arg_2.a, -34186i, global0.b.c >> (_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(arg_2.a.x, arg_3, 1u, 36132u))) % 32u), _wgslsmith_f_op_f32(max(arg_2.d, _wgslsmith_f_op_f32(781f * _wgslsmith_f_op_f32(-869f + 595f))))), Struct_2(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(70465u, 4294967295u, arg_3, arg_2.a.x) ^ global0.a, global0.a & global0.a), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a.x, 93523u, 8079u, 4294967295u), vec4<u32>(1u, global0.a.x, 1u, arg_2.a.x)), ~global0.a | abs(vec4<u32>(40568u, global0.b.a.x, arg_2.a.x, 1u))), Struct_1(~(arg_2.a ^ vec3<u32>(4294967295u, arg_2.a.x, 0u)), -21244i, select(arg_1, global0.b.c, -21188i <= u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b.d))))), Struct_3(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(global0.b.c, u_input.a, -9262i), vec3<i32>(arg_2.c, u_input.a, 46887i), vec3<bool>(true, false, true)), _wgslsmith_add_vec3_i32(vec3<i32>(8979i, 2147483647i, -1i), vec3<i32>(arg_1, arg_2.b, arg_1))), Struct_2(max(vec4<u32>(arg_2.a.x, 30806u, 1u, arg_2.a.x), ~global0.a), Struct_1(vec3<u32>(1u, arg_2.a.x, 1u) >> (vec3<u32>(global0.b.a.x, 74492u, global0.b.a.x) % vec3<u32>(32u)), ~15287i, firstTrailingBit(global0.b.c), _wgslsmith_f_op_f32(max(-361f, -296f))))));
    var var_2 = ~select(i32(-1i) * -abs(var_1.d.b.b.b), -2147483647i, select(true, any(vec3<bool>(true, false, false)), true) && any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false))));
    global0 = Struct_2(~(~_wgslsmith_sub_vec4_u32(~global0.a, ~var_1.a.a)), arg_2);
    return arg_2.d;
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.d) - global0.b.d), ~_wgslsmith_div_i32(-1i, 47247i), arg_1.b, ~1u)))), _wgslsmith_f_op_f32(abs(arg_1.b.d)), select(vec2<u32>(arg_1.b.a.x, 2787u), ~arg_1.b.a.yz, !select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), u_input.a != global0.b.b)), !all(vec2<bool>(true, true)), Struct_4(Struct_2(firstLeadingBit(countOneBits(vec4<u32>(1u, global0.b.a.x, global0.b.a.x, global0.b.a.x))), Struct_1(global0.b.a, 2147483647i, _wgslsmith_mult_i32(u_input.a, global0.b.c), _wgslsmith_f_op_f32(f32(-1f) * -795f))), global0.b, Struct_2(_wgslsmith_div_vec4_u32(max(global0.a, global0.a), global0.a), arg_1.b), Struct_3(-arg_1.b.b, Struct_2(~vec4<u32>(1u, 0u, arg_1.a.x, 21864u), global0.b))));
    global0 = Struct_2(vec4<u32>(_wgslsmith_clamp_u32(arg_1.a.x, var_0.e.a.b.a.x, 22678u), abs(~11385u) >> (arg_1.b.a.x % 32u), 1u, ~arg_1.b.a.x), global0.b);
    global0 = arg_1;
    let var_1 = u_input.a;
    let var_2 = true;
    return vec4<u32>(_wgslsmith_mult_u32(~(~(~23571u)), ~(~arg_1.a.x) & max(21806u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 1u), global0.b.a))), arg_1.a.x ^ global0.b.a.x, var_0.e.d.b.b.a.x, _wgslsmith_sub_u32(var_0.c.x << (4294967295u % 32u), ~var_0.e.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(abs(func_1(_wgslsmith_f_op_f32(global0.b.d - _wgslsmith_f_op_f32(-global0.b.d)), Struct_2(global0.a, Struct_1(vec3<u32>(global0.a.x, 30882u, 0u), 2085i, 0i, -277f)))), global0.b);
    let var_0 = Struct_4(Struct_2(vec4<u32>(abs(~4294967295u), ~func_1(-117f, Struct_2(vec4<u32>(global0.b.a.x, 1u, global0.b.a.x, global0.b.a.x), global0.b)).x, reverseBits(1u), 4294967295u), global0.b), global0.b, Struct_2(global0.a ^ global0.a, global0.b), Struct_3(-62166i, Struct_2(~global0.a & ~vec4<u32>(global0.a.x, 0u, 1u, global0.a.x), global0.b)));
    var var_1 = var_0;
    let var_2 = global0.b.a.x;
    var var_3 = 374f;
    let var_4 = Struct_1(_wgslsmith_div_vec3_u32(firstLeadingBit(reverseBits(vec3<u32>(17149u, var_1.c.b.a.x, global0.a.x)) & _wgslsmith_sub_vec3_u32(var_0.b.a, var_1.c.b.a)), min(select(vec3<u32>(17965u, 27854u, var_0.d.b.a.x), ~vec3<u32>(var_0.c.a.x, 0u, global0.b.a.x), vec3<bool>(false, false, false)), _wgslsmith_div_vec3_u32(vec3<u32>(7260u, 24499u, global0.a.x), var_1.c.b.a) & ~vec3<u32>(0u, var_1.b.a.x, var_1.c.b.a.x))), reverseBits(_wgslsmith_add_i32(1i | (u_input.a ^ 2147483647i), 0i)), max(-1i << (1u % 32u), -var_0.c.b.c), var_0.c.b.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(abs(global0.a.x), var_0.d.b.b.a.x, reverseBits(~var_0.d.b.a.x << (var_0.d.b.a.x % 32u))), abs(vec4<i32>(u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-30994i, global0.b.c, var_1.b.c), vec3<i32>(-14559i, u_input.a, -1i)), 10080i, var_0.d.a)), u_input.a << (1u % 32u), _wgslsmith_add_vec4_u32(~vec4<u32>(var_0.d.b.a.x, global0.a.x, var_1.d.b.b.a.x, 1u), ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.a.x, global0.a.x, 1u, var_1.b.a.x), vec4<u32>(var_0.c.b.a.x, 1u, 1u, var_0.c.b.a.x)))), vec2<i32>(~var_4.c, ~var_0.a.b.c));
}

