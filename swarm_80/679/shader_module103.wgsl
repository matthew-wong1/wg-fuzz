struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<i32>(2147483647i, -14451i), vec3<bool>(false, false, true), 25973u), Struct_2(vec2<i32>(2147483647i, 2147483647i), vec3<bool>(true, true, false), 1u), Struct_2(vec2<i32>(-1i, 1i), vec3<bool>(true, false, false), 0u), Struct_2(vec2<i32>(1i, -24557i), vec3<bool>(true, true, false), 0u), Struct_2(vec2<i32>(1i, -12561i), vec3<bool>(true, false, true), 81784u), Struct_2(vec2<i32>(i32(-2147483648), -31440i), vec3<bool>(true, false, true), 1u), Struct_2(vec2<i32>(0i, 1i), vec3<bool>(true, false, true), 1u), Struct_2(vec2<i32>(-123916i, 2147483647i), vec3<bool>(true, true, true), 71059u), Struct_2(vec2<i32>(18445i, 57798i), vec3<bool>(false, true, false), 4294967295u), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<bool>(false, true, false), 1u), Struct_2(vec2<i32>(i32(-2147483648), 0i), vec3<bool>(true, false, false), 1u), Struct_2(vec2<i32>(1584i, 1i), vec3<bool>(true, true, false), 1u), Struct_2(vec2<i32>(0i, 23784i), vec3<bool>(false, false, true), 4294967295u), Struct_2(vec2<i32>(-9812i, 46941i), vec3<bool>(true, false, false), 11082u), Struct_2(vec2<i32>(11506i, -15256i), vec3<bool>(false, false, false), 0u), Struct_2(vec2<i32>(20165i, i32(-2147483648)), vec3<bool>(true, false, true), 19775u), Struct_2(vec2<i32>(-32644i, 1i), vec3<bool>(true, false, false), 4294967295u), Struct_2(vec2<i32>(-9551i, 21259i), vec3<bool>(true, false, true), 1u), Struct_2(vec2<i32>(-394i, -32676i), vec3<bool>(false, true, true), 46059u), Struct_2(vec2<i32>(-2923i, -37011i), vec3<bool>(true, false, true), 35463u), Struct_2(vec2<i32>(9286i, i32(-2147483648)), vec3<bool>(true, true, true), 0u), Struct_2(vec2<i32>(2147483647i, 0i), vec3<bool>(true, false, true), 1u), Struct_2(vec2<i32>(18202i, 0i), vec3<bool>(true, false, true), 4294967295u), Struct_2(vec2<i32>(-12163i, 29530i), vec3<bool>(false, false, true), 86228u), Struct_2(vec2<i32>(-4505i, 2147483647i), vec3<bool>(false, false, false), 1u), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), vec3<bool>(true, true, true), 49371u));

var<private> global2: array<bool, 13>;

var<private> global3: array<Struct_2, 25>;

var<private> global4: f32 = -489f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<bool> {
    global3 = array<Struct_2, 25>();
    global1 = array<Struct_2, 26>();
    global4 = _wgslsmith_f_op_f32(min(-791f, 666f));
    var var_0 = 1i;
    let var_1 = max(firstLeadingBit(~vec4<i32>(u_input.d, _wgslsmith_clamp_i32(-23852i, -17396i, u_input.d), _wgslsmith_clamp_i32(u_input.d, -1i, 33729i), 11100i)), firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(u_input.d << (arg_0.c % 32u), ~arg_0.a.x), u_input.d, _wgslsmith_div_i32(arg_0.a.x, 1i), _wgslsmith_div_i32(arg_0.a.x, u_input.d))));
    return !global0[_wgslsmith_index_u32(~arg_1.x, 32u)];
}

fn func_2() -> Struct_1 {
    global2 = array<bool, 13>();
    var var_0 = u_input.b.ywx;
    var var_1 = ~var_0.x;
    global0 = array<vec4<bool>, 32>();
    var var_2 = !all(func_3(Struct_2(min(vec2<i32>(44562i, u_input.d), vec2<i32>(u_input.d, -2147483647i)), vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 13u)], global2[_wgslsmith_index_u32(u_input.b.x, 13u)]), u_input.a.x << (var_0.x % 32u)), var_0.zx));
    return Struct_1(_wgslsmith_f_op_f32(sign(-710f)), var_0.x & ~1u, func_3(global3[_wgslsmith_index_u32(var_0.x, 25u)], ~_wgslsmith_sub_vec2_u32(u_input.b.wz, _wgslsmith_add_vec2_u32(var_0.yz, vec2<u32>(1u, var_0.x)))).wx, -(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.d), vec3<i32>(-39044i, -44078i, 1i)) >> (~reverseBits(vec3<u32>(var_0.x, 1u, 53146u)) % vec3<u32>(32u))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> i32 {
    global1 = array<Struct_2, 26>();
    let var_0 = !(!(_wgslsmith_f_op_f32(f32(-1f) * -343f) < arg_1.a));
    global0 = array<vec4<bool>, 32>();
    let var_1 = arg_1.d;
    var var_2 = true;
    return ~(-arg_3.d.x);
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = _wgslsmith_mult_i32(-(func_4(true, func_2(), u_input.d, func_2()) >> (25078u % 32u)), 2147483647i);
    global2 = array<bool, 13>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1426f, 1184f, -377f, -728f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 750f, 1653f, 193f))) + vec4<f32>(1002f, _wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(-471f * -2114f), _wgslsmith_f_op_f32(1030f - -979f)))), _wgslsmith_dot_vec3_u32(vec3<u32>(14711u, ~arg_0.c, _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(9620u, u_input.a.x))), u_input.b.wyz) & func_2().b, -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f - 1301f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-645f, -401f, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(67666u, 1u), 32u)], select(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)], false), false)) && (-(u_input.d & u_input.d) <= _wgslsmith_dot_vec3_i32(~(-vec3<i32>(0i, 0i, u_input.d)), reverseBits(abs(vec3<i32>(1i, 25618i, 0i)))));
    global2 = array<bool, 13>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 26u)];
    global0 = array<vec4<bool>, 32>();
    var var_2 = !(var_1.b.x & (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(183f - -2175f))) != -204f));
    let x = u_input.a;
    s_output = func_1(Struct_2(-var_1.a, var_1.b, (u_input.a.x ^ _wgslsmith_mod_u32(u_input.a.x, var_1.c)) << (select(~u_input.a.x, u_input.b.x, !global2[_wgslsmith_index_u32(var_1.c, 13u)]) % 32u)));
}

