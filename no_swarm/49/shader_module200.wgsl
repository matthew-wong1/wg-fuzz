struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: array<vec4<i32>, 16>;

var<private> global2: array<Struct_1, 4>;

var<private> global3: Struct_4 = Struct_4(0u, Struct_3(-12078i, Struct_1(17341i, -1000f), 18911u, vec4<bool>(true, false, true, true)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> u32 {
    var var_0 = Struct_4(4294967295u, arg_1);
    var_0 = Struct_4(~arg_0.c, Struct_3(firstLeadingBit(select(-34755i, -59202i, false) >> (40591u % 32u)), Struct_1(arg_3, _wgslsmith_f_op_f32(arg_1.b.b - _wgslsmith_f_op_f32(floor(arg_0.b.b)))), _wgslsmith_add_u32(~_wgslsmith_mod_u32(1u, 11760u), min(arg_1.c, ~25063u)), vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(63059u, 14261u, 4294967295u), vec3<u32>(4294967295u, 0u, 1u)) == _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.c, arg_1.c, global3.b.c, global3.a), vec4<u32>(u_input.c, 53392u, var_0.b.c, 1u)), !(!global0.x), -arg_3 > -2147483647i, any(vec3<bool>(false, arg_1.d.x, arg_1.d.x)))));
    var_0 = Struct_4(_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~u_input.a, global3.b.c), firstLeadingBit(~0u), 1u), var_0.b.c), global3.b);
    return _wgslsmith_mult_u32(~arg_0.c, ~var_0.b.c);
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global0 = select(vec4<bool>(any(global3.b.d.zw), any(select(select(vec4<bool>(global0.x, false, true, false), vec4<bool>(false, true, global3.b.d.x, true), vec4<bool>(true, false, false, global3.b.d.x)), global3.b.d, true)), true, global0.x), select(global3.b.d, global3.b.d, vec4<bool>(all(vec2<bool>(global0.x, false)), true, all(select(vec2<bool>(global3.b.d.x, global3.b.d.x), vec2<bool>(false, global3.b.d.x), global3.b.d.x)), global0.x)), global3.b.d);
    let var_0 = u_input.b;
    let var_1 = ~(~(-2147483647i));
    var var_2 = _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-170f)))))) < _wgslsmith_f_op_f32(-global3.b.b.b);
    var var_3 = global3.b.b;
    return vec3<u32>(4294967295u, _wgslsmith_mult_u32(min(~(~0u), min(func_3(global3.b, global3.b, true, 2147483647i), 21294u)), u_input.a), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(10070u, u_input.a, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u), vec3<u32>(0u, 1u, global3.a)) | firstLeadingBit(vec3<u32>(u_input.d, 38717u, 4294967295u))), _wgslsmith_sub_u32(~(~4294967295u), 100802u)));
}

fn func_1(arg_0: Struct_4) -> f32 {
    let var_0 = false;
    global0 = vec4<bool>(true, false, arg_0.b.d.x, global0.x);
    var var_1 = max(vec3<u32>(u_input.a, reverseBits(4294967295u), ~countOneBits(global3.b.c)), func_2(global3.b.b.b)) >> (select(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.c, 0u, arg_0.b.c)), vec3<u32>(0u, 33184u, 42851u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, global3.a, arg_0.a) ^ vec3<u32>(arg_0.a, arg_0.a, u_input.c), ~vec3<u32>(0u, u_input.c, u_input.d))), func_2(_wgslsmith_f_op_f32(abs(1606f))) << (~vec3<u32>(5216u, 43768u, global3.a) % vec3<u32>(32u)), select(arg_0.b.b.a, arg_0.b.a, any(vec4<bool>(true, var_0, var_0, false))) != abs(reverseBits(23221i))) % vec3<u32>(32u));
    var var_2 = Struct_2(var_0);
    global0 = vec4<bool>(true, all(vec3<bool>(any(select(global3.b.d.xzy, vec3<bool>(var_0, false, false), var_0)), true & !global3.b.d.x, true)), true, false);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-332f, -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f) * _wgslsmith_f_op_f32(func_1(Struct_4(u_input.c, global3.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.b.b * global3.b.b.b) * -1000f)) < _wgslsmith_div_f32(global3.b.b.b, _wgslsmith_f_op_f32(-716f * _wgslsmith_f_op_f32(467f * global3.b.b.b))), false, !global3.b.d.x, global0.x);
    global3 = Struct_4(u_input.d, global3.b);
    let var_0 = -abs(-(~_wgslsmith_add_vec2_i32(u_input.b.yz, u_input.b.yw)));
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>((-1i >> (~global3.b.c % 32u)) ^ -global3.b.b.a, u_input.b.x, 34546i, _wgslsmith_add_i32(var_0.x | _wgslsmith_mod_i32(u_input.b.x, 41718i), countOneBits(global3.b.a & -12817i))), _wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(~(u_input.d >> (_wgslsmith_div_u32(4294967295u, u_input.c) % 32u)), 16u)], _wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.b.x, var_0.x, 0i, u_input.b.x), global1[_wgslsmith_index_u32(1u, 16u)]), global1[_wgslsmith_index_u32(global3.b.c, 16u)] << (vec4<u32>(0u, global3.b.c, u_input.c, global3.b.c) % vec4<u32>(32u))) << (vec4<u32>(u_input.d, global3.b.c, u_input.d, 4294967295u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x);
}

