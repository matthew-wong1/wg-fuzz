struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> vec2<u32> {
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    let var_0 = u_input.a;
    global0 = array<vec3<bool>, 31>();
    global0 = array<vec3<bool>, 31>();
    return vec2<u32>(max(u_input.c ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.a, u_input.c), vec3<u32>(u_input.a, var_0, u_input.c)), u_input.a), var_0) & ~(~(~vec2<u32>(u_input.c, 1u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_3(-abs(vec4<i32>(10567i, u_input.e.x, -33888i, u_input.d) >> (vec4<u32>(14226u, u_input.c, 42086u, 0u) % vec4<u32>(32u))), firstLeadingBit(u_input.e.x) <= u_input.b.x, vec4<f32>(521f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1f, -1000f), Struct_2(-((u_input.e.x >> (34970u % 32u)) & u_input.b.x), ~(u_input.e >> (vec3<u32>(22812u, 90308u, u_input.c) % vec3<u32>(32u))) >> (~(~vec3<u32>(u_input.c, u_input.a, u_input.c)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(485f, 541f))) < 527f, vec2<i32>(-74250i, ~(~(-1i)))));
    var_0 = Struct_3(-var_0.a, true, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.c.x)))), _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.x)))), -526f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c.x, -1000f, false)))), Struct_2(~_wgslsmith_mod_i32(1i, u_input.b.x | var_0.a.x), firstLeadingBit(~vec3<i32>(var_0.d.d.x, var_0.d.a, u_input.d)), !all(vec4<bool>(var_0.b, false, var_0.d.c, var_0.b)) || false, vec2<i32>(8894i, u_input.e.x)));
    global0 = array<vec3<bool>, 31>();
    let var_1 = vec2<bool>(true & ((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.a)) != ~0u) | (_wgslsmith_f_op_f32(1183f * var_0.c.x) != var_0.c.x)), 22644u <= max(17985u, firstLeadingBit(u_input.a)));
    global0 = array<vec3<bool>, 31>();
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.c.xx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.yz) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-237f, var_0.c.x)))))))));
}

fn func_1() -> vec2<f32> {
    global0 = array<vec3<bool>, 31>();
    let var_0 = func_2();
    var var_1 = Struct_4(~_wgslsmith_mod_vec2_u32(var_0, ~var_0) >> (var_0 % vec2<u32>(32u)), Struct_1(vec2<i32>(u_input.e.x, ~74371i), u_input.b));
    var var_2 = Struct_4(select(vec2<u32>(0u, ~4294967295u), var_1.a, true), var_1.b);
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(0u), var_1.a.x), 31u)];
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(f32(-1f) * -367f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1091f, -2492f) * vec2<f32>(_wgslsmith_f_op_f32(1803f + 268f), _wgslsmith_f_op_f32(select(-605f, 491f, var_3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(855f, 956f) + vec2<f32>(-1000f, -1393f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-735f, 141f) + vec2<f32>(132f, -369f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1959f, -856f)), vec2<bool>(true, true))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1595f, -427f) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1464f, -1065f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-215f, -1065f), vec2<f32>(130f, var_0.x))))) + _wgslsmith_f_op_vec2_f32(func_1())))));
    let var_1 = Struct_2(u_input.d, vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 5469i, 5738i, 1i), vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.e.x)), countOneBits(vec4<i32>(u_input.b.x, -4030i, 0i, u_input.d))), firstTrailingBit(vec4<i32>(-38421i, u_input.d, u_input.d, u_input.e.x) ^ vec4<i32>(-2147483647i, u_input.e.x, u_input.d, u_input.b.x))), ~countOneBits(-41032i), abs(_wgslsmith_mod_i32(1i, 1i) ^ -u_input.d)), 1i <= _wgslsmith_sub_i32(-2147483647i, firstLeadingBit(u_input.b.x << (u_input.c % 32u))), select(firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.d), u_input.e.x)), -abs(vec2<i32>(-8245i, -1i)), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), true))));
    var var_2 = Struct_1(select(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.d, vec2<i32>(26505i, var_1.d.x)), vec2<i32>(-26440i, 1i)), vec2<i32>(var_1.b.x, ~2147483647i), vec2<bool>(u_input.c >= u_input.c, var_1.c)) ^ vec2<i32>(-37115i ^ -var_1.a, ~var_1.b.x), u_input.e);
    var_0 = vec2<f32>(207f, _wgslsmith_f_op_vec2_f32(func_1()).x);
    let x = u_input.a;
    s_output = StorageBuffer(select(-2147483647i, _wgslsmith_mult_i32(55671i, ~(i32(-1i) * -29818i)), var_1.c), ~var_2.b.x);
}

