struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: Struct_1 = Struct_1(true, vec2<i32>(-1i, 47103i));

var<private> global2: vec3<i32>;

var<private> global3: f32 = -1000f;

var<private> global4: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(true, vec2<i32>(-31777i, 18276i)), Struct_1(false, vec2<i32>(-1i, 2625i)), Struct_1(true, vec2<i32>(-1i, -10771i)), Struct_1(true, vec2<i32>(-60351i, i32(-2147483648))), Struct_1(false, vec2<i32>(17066i, 19380i)), Struct_1(false, vec2<i32>(16491i, 1198i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1376f, arg_2, 2158f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1065f, -1000f, arg_2), vec3<f32>(arg_2, 1000f, 1106f), arg_3.a))), vec3<f32>(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(-540f * arg_2))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(243f, 402f, -561f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(364f, arg_2, -535f), vec3<f32>(-317f, -1167f, 556f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, -412f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1844f, 517f, 325f))))), !(!select(vec3<bool>(arg_3.a, false, false), vec3<bool>(arg_3.a, arg_3.a, false), vec3<bool>(false, var_0.a, false))))));
    var var_2 = _wgslsmith_mod_i32(arg_3.b.x, _wgslsmith_clamp_i32(abs(1i), 1i, ~(~(-31181i))) << (u_input.c % 32u));
    var var_3 = !(!select(vec4<bool>(true, arg_1.a, true, any(vec2<bool>(true, arg_0.x))), !(!vec4<bool>(false, true, var_0.a, true)), vec4<bool>(var_0.a, 1155f == var_1.x, arg_1.a, global1.a)));
    let var_4 = _wgslsmith_mod_u32(4294967295u, select(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, abs(u_input.c)), ~_wgslsmith_clamp_u32(0u, 1u, 1u)), u_input.c & u_input.c, !(!any(vec4<bool>(false, true, arg_3.a, arg_3.a)))));
    return _wgslsmith_mult_vec3_i32(-u_input.a, abs(u_input.a));
}

fn func_2() -> Struct_1 {
    global2 = max(func_3(!select(vec2<bool>(true, true), select(vec2<bool>(false, global1.a), vec2<bool>(false, true), vec2<bool>(global1.a, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(global1.a, true))), global0[_wgslsmith_index_u32(~u_input.c, 29u)], -200f, global0[_wgslsmith_index_u32(~(u_input.c >> (43431u % 32u)), 29u)]), min(~vec3<i32>(2147483647i, -6365i, -1i), u_input.a) & vec3<i32>(~global1.b.x, abs(u_input.a.x), global1.b.x));
    var var_0 = global4[_wgslsmith_index_u32(u_input.c, 6u)];
    global4 = array<Struct_1, 6>();
    let var_1 = Struct_1(true, firstLeadingBit(~(~min(global1.b, global2.xz))));
    let var_2 = vec2<bool>(!all(vec4<bool>(var_0.a, global1.a, true, true)) && any(select(vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, global1.a), vec2<bool>(var_0.a, var_1.a))), all(!vec4<bool>(false, all(vec3<bool>(global1.a, true, global1.a)), true, false)));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    global1 = arg_0;
    let var_0 = func_2();
    let var_1 = min(1i, arg_0.b.x);
    global4 = array<Struct_1, 6>();
    let var_2 = Struct_1(all(!(!vec4<bool>(global1.a, false, true, var_0.a))), -(vec2<i32>(6096i, _wgslsmith_div_i32(var_1, global1.b.x)) | global2.zy));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, ~vec2<i32>(max(0i, -u_input.b), ~_wgslsmith_mod_i32(-8234i, global2.x)));
    let var_1 = -937f;
    var var_2 = ~vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 39482i, -26416i, 25852i), vec4<i32>(global2.x, -2781i, global2.x, global2.x)) ^ 1i, 11234i), _wgslsmith_clamp_i32(u_input.b, func_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.c), 29u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(-985f, var_1, var_1, 1219f) * vec4<f32>(-590f, -114f, var_1, -197f))), i32(-1i) * -5179i), abs(~global1.b.x));
    global4 = array<Struct_1, 6>();
    var var_3 = ((max(vec2<u32>(0u, u_input.c), ~vec2<u32>(4294967295u, u_input.c)) | vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 42578u)), 1u)) & (vec2<u32>(abs(u_input.c), _wgslsmith_mod_u32(1u, 4294967295u)) ^ firstTrailingBit(select(vec2<u32>(1u, 1u), vec2<u32>(u_input.c, 17322u), global1.a)))) & (~vec2<u32>(select(u_input.c, u_input.c, var_0.a), 1u) & _wgslsmith_div_vec2_u32(select(~vec2<u32>(1u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(1u, u_input.c)), any(vec2<bool>(var_0.a, var_0.a))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(100850u, u_input.c, 1u)), u_input.c)));
    let var_4 = func_2();
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(~min(2147483647i, -76416i), ~_wgslsmith_div_i32(-5240i, var_4.b.x), _wgslsmith_clamp_i32(abs(var_5.b.x), 56360i & var_0.b.x, 2147483647i)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(729f + var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(339f)), _wgslsmith_f_op_f32(var_1 * -367f)))))));
}

