struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<bool>, 18>;

var<private> global2: array<vec3<i32>, 20>;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 0u, 4294967295u, 6257u);

var<private> global4: array<u32, 22>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    global4 = array<u32, 22>();
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u << ((u_input.b | 4294967295u) % 32u), ~global3.x), 22u)], u_input.b), _wgslsmith_div_vec2_u32(global0.c.ww, u_input.c.yz));
    global1 = array<vec4<bool>, 18>();
    return vec4<u32>(61151u, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 52966u), vec2<u32>(var_0.x, 43529u)) >> (global4[_wgslsmith_index_u32(global3.x, 22u)] % 32u)) ^ _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.d.x, 74049u, 4294967295u), global0.c.yxy), global4[_wgslsmith_index_u32(65828u, 22u)]), 4294967295u, 4294967295u);
}

fn func_2() -> Struct_1 {
    global1 = array<vec4<bool>, 18>();
    global1 = array<vec4<bool>, 18>();
    var var_0 = abs(_wgslsmith_div_vec4_u32(~func_3(58126i), vec4<u32>(_wgslsmith_div_u32(~40635u, ~60335u), _wgslsmith_mod_u32(~1u, global3.x >> (u_input.c.x % 32u)), global4[_wgslsmith_index_u32(133077u, 22u)], ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 60523u, 1111u, global4[_wgslsmith_index_u32(global0.b.d.x, 22u)]), global0.c))));
    let var_1 = select(33145u, global0.c.x, !((31003u <= ~u_input.b) || true));
    let var_2 = global0.b;
    return global0.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32) -> Struct_2 {
    global4 = array<u32, 22>();
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.xy ^ vec2<i32>(11892i, 1i), u_input.a.zw), select(min(vec2<i32>(-11367i, -10949i), vec2<i32>(arg_2, arg_2)), firstLeadingBit(vec2<i32>(u_input.a.x, u_input.e.x)), arg_0.b.c.ww)), u_input.a.zw), _wgslsmith_div_i32(u_input.e.x, -u_input.a.x & -1i));
    global3 = global0.c;
    var var_1 = ~(~_wgslsmith_add_vec4_u32(~(~arg_1), reverseBits(arg_0.c)));
    return arg_0;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(all(vec3<bool>(any(global1[_wgslsmith_index_u32(u_input.b >> (88500u % 32u), 18u)]), !any(global0.b.c), true)), true, select(!global1[_wgslsmith_index_u32(global3.x, 18u)], vec4<bool>(!any(vec2<bool>(false, global0.b.a)), !global0.b.b, false, !(!global0.b.c.x)), !(!(!global0.b.c))), global3.zyw, global0.b.b);
    global2 = array<vec3<i32>, 20>();
    var var_1 = func_4(Struct_2(111516u, func_2(), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, var_0.d.x, 1769u, global0.a), global0.c)), vec4<u32>(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(global0.a, 22u)], ~var_0.d.x >> (_wgslsmith_dot_vec3_u32(global3.zzw, u_input.c) % 32u)), _wgslsmith_mod_u32(~4294967295u, 26968u), var_0.d.x, ~global0.c.x), _wgslsmith_sub_i32(-1i, u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(-arg_0);
    global1 = array<vec4<bool>, 18>();
    return global0.b;
}

fn func_5(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(478f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-739f)) + -1650f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1147f)))) * 1f))).d.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1220f - 1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1002f))))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(605f + 996f) + _wgslsmith_f_op_f32(max(-406f, -456f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1154f - -130f))))));
    let var_2 = func_1(var_1.x);
    let var_3 = func_1(var_1.x);
    let var_4 = select(vec3<i32>(-1i) * -abs(-vec3<i32>(-2147483647i, u_input.a.x, u_input.e.x)), global2[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(abs(var_3.d.x), global3.x) << (~abs(17721u) % 32u)), 20u)], false);
    return ~firstLeadingBit(vec4<u32>(~34691u, ~20272u, arg_0.d.x | 4294967295u, 43148u | global3.x)) >> (global0.c % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    global3 = _wgslsmith_add_vec4_u32(global0.c, func_5(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1363f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(-205f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1695f - -986f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1551f))), 566f, false)), 1660f)));
    global2 = array<vec3<i32>, 20>();
    global4 = array<u32, 22>();
    let var_2 = u_input.d != u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(reverseBits(global2[_wgslsmith_index_u32(~reverseBits(global0.a), 20u)]), countOneBits(~vec3<i32>(-2147483647i, u_input.d, 2147483647i) ^ vec3<i32>(u_input.e.x, u_input.d, -2147483647i))), _wgslsmith_f_op_f32(-var_1.x), u_input.a.x, 550f);
}

