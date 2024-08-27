struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-1i, -26301i), -907f, false, vec2<u32>(1u, 1u), -157f);

var<private> global1: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false));

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<i32>(0i, 1i), 1327f, true, vec2<u32>(57716u, 4294967295u), -955f), Struct_1(vec2<i32>(1i, i32(-2147483648)), -399f, false, vec2<u32>(13712u, 54875u), 1083f));

var<private> global3: i32;

var<private> global4: u32 = 13030u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    global0 = Struct_1(u_input.b.yy, -544f, true, vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.d.x, 1u, 124896u, u_input.c), vec4<u32>(9577u, global0.d.x, global0.d.x, global0.d.x)), vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.c), global0.d.x, global0.d.x, 0u >> (global0.d.x % 32u))), select(~reverseBits(51926u), ~4294967295u, global0.c | false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-715f)), global0.e)))))));
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(~(~45030u), 6780u) ^ u_input.a.x, 1u), 2u)];
    let var_1 = global2[_wgslsmith_index_u32(u_input.c | (~0u ^ _wgslsmith_mod_u32(~(~global0.d.x), ~46293u)), 2u)];
    global4 = var_1.d.x;
    var var_2 = global2[_wgslsmith_index_u32(u_input.c | 4294967295u, 2u)];
    return _wgslsmith_mod_vec3_u32(~(~abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, global0.d.x, 6968u), vec3<u32>(4294967295u, 4294967295u, global0.d.x)))), ~(~(~(vec3<u32>(var_1.d.x, 1u, var_2.d.x) | vec3<u32>(1u, 24556u, 17874u)))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(func_3(1000f), max(vec3<u32>(6849u, global0.d.x, u_input.a.x) << (vec3<u32>(u_input.a.x, 94884u, 0u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(17143u, global0.d.x, u_input.c), vec3<u32>(4294967295u, 1u, global0.d.x))) ^ ~(vec3<u32>(global0.d.x, u_input.a.x, u_input.c) ^ vec3<u32>(global0.d.x, global0.d.x, u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1000f, _wgslsmith_f_op_f32(-arg_1), -781f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -920f, -735f, -215f))), _wgslsmith_f_op_f32(select(-1000f, global0.b, true)) > 901f)))));
    global1 = array<vec4<bool>, 26>();
    var var_2 = firstLeadingBit(~0u);
    global3 = 18612i;
    return Struct_1(vec2<i32>(abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, u_input.b.x), ~vec2<i32>(global0.a.x, arg_2.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, -1i) | arg_2.zy, u_input.b.zy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) - _wgslsmith_f_op_f32(arg_1 - _wgslsmith_div_f32(arg_1, arg_1)))), !any(!vec3<bool>(arg_0, false, global0.c)), vec2<u32>(~(~(~var_0)), ~var_0), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * -1000f) * arg_1))));
}

fn func_1(arg_0: u32) -> u32 {
    global1 = array<vec4<bool>, 26>();
    var var_0 = u_input.b;
    var_0 = -_wgslsmith_div_vec3_i32(max(~(u_input.b | vec3<i32>(-1i, var_0.x, -22054i)), vec3<i32>(global0.a.x, 1i, var_0.x)), _wgslsmith_mod_vec3_i32(u_input.b, u_input.b));
    global2 = array<Struct_1, 2>();
    let var_1 = func_2(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -502f), ~firstTrailingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(5572i, -35824i, u_input.b.x, 1i), vec4<i32>(-36242i, var_0.x, global0.a.x, 1i))));
    return countOneBits(max(4294967295u, _wgslsmith_dot_vec2_u32(var_1.d, vec2<u32>(1u, global0.d.x | u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = firstLeadingBit(reverseBits(reverseBits(global0.a.x & (global0.a.x ^ 2372i))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(170f, global0.e, global0.b, global0.e))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.e, -125f, 119f)))))));
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(func_1(~global0.d.x) & ~_wgslsmith_sub_u32(90769u, u_input.c), global0.d.x, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 203f))).x), _wgslsmith_clamp_vec3_u32(~max(vec3<u32>(3292u, global0.d.x, global0.d.x), select(vec3<u32>(117594u, global0.d.x, global0.d.x), vec3<u32>(global0.d.x, global0.d.x, global0.d.x), vec3<bool>(global0.c, false, true))), func_3(var_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.d.x, 0u, 10400u), _wgslsmith_div_vec3_u32(vec3<u32>(global0.d.x, 1u, 101308u), vec3<u32>(15891u, u_input.c, 4294967295u))) & ~vec3<u32>(49286u, 0u, 4294967295u)));
    var var_2 = _wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.c ^ 4294967295u, ~global0.d.x), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 0u, global0.d.x), vec3<u32>(var_1.x, var_1.x, 18336u))))), ~(vec3<u32>(_wgslsmith_mod_u32(var_1.x, var_1.x), global0.d.x, 4294967295u) >> (firstLeadingBit(~vec3<u32>(1u, global0.d.x, 13043u)) % vec3<u32>(32u))));
    let var_3 = func_2(false, var_0.x, _wgslsmith_sub_vec4_i32(~abs(vec4<i32>(-2147483647i, -605i, u_input.b.x, -1i)), _wgslsmith_add_vec4_i32(~vec4<i32>(0i, -15986i, 21264i, u_input.b.x), ~vec4<i32>(u_input.b.x, 2147483647i, -40200i, u_input.b.x))) | vec4<i32>(-2147483647i, select(_wgslsmith_div_i32(0i, global0.a.x), _wgslsmith_add_i32(97106i, 1i), any(global1[_wgslsmith_index_u32(0u, 26u)])), -_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, u_input.b.x, u_input.b.x), vec4<i32>(-17928i, global0.a.x, global0.a.x, u_input.b.x)), global0.a.x));
    global1 = array<vec4<bool>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(61117u, abs(var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - global0.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(208f, global0.b))), _wgslsmith_f_op_f32(floor(global0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b - -1592f))), _wgslsmith_f_op_f32(abs(-580f)), global0.d.x, var_1.x);
}

