struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

var<private> global1: array<f32, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.b ^ ~reverseBits(u_input.b);
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    global1 = array<f32, 5>();
    global0 = array<vec3<bool>, 10>();
    return Struct_2(var_0.x);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(true, 28091u);
    let var_1 = Struct_1(true, ~51113u);
    var var_2 = false;
    var_0 = var_1;
    var_2 = !(!all(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_3.a, firstLeadingBit(u_input.b.x)), 10u)]));
    return var_1;
}

fn func_3(arg_0: u32, arg_1: u32) -> Struct_2 {
    var var_0 = true;
    let var_1 = _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.c.x, reverseBits(_wgslsmith_mult_i32(1i, 2147483647i)), max(2147483647i, _wgslsmith_sub_i32(-16704i, 33102i))), reverseBits(~(-vec3<i32>(u_input.a.x, 0i, u_input.a.x))) ^ (vec3<i32>(-49672i, firstLeadingBit(0i), u_input.c.x) << (u_input.b.yyw % vec3<u32>(32u))));
    var var_2 = any(vec4<bool>(false, all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true)), true, true));
    var var_3 = Struct_1(((u_input.b.x <= 1u) && all(vec2<bool>(true, true))) | true, firstTrailingBit(countOneBits(abs(1u))));
    var var_4 = var_1.zz;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.b.x, 5u)])))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1083f), _wgslsmith_f_op_f32(1000f * -871f))), global1[_wgslsmith_index_u32(~23361u, 5u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_1 = func_2(func_1(), u_input.c.x, max(u_input.a.x, u_input.a.x), func_1());
    var_1 = Struct_1((_wgslsmith_div_f32(745f, var_0.x) == _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~0u, 5u)])) || (!any(vec4<bool>(false, var_1.a, var_1.a, false)) == any(vec2<bool>(false, var_1.a))), 54633u);
    var var_2 = Struct_2(select(var_1.b & 0u, u_input.b.x, select(false, func_2(Struct_2(57162u), u_input.c.x, u_input.c.x, Struct_2(4294967295u)).a, var_1.a)) & firstLeadingBit(1u));
    var_2 = func_3(var_1.b, (_wgslsmith_sub_u32(_wgslsmith_mod_u32(5786u, u_input.b.x), ~var_2.a) >> (~var_1.b % 32u)) >> (_wgslsmith_div_u32(~8192u, 1u) % 32u));
    let var_3 = firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.c.x), vec4<i32>(41106i, u_input.a.x, -38771i, -49199i)), 2147483647i), abs(~u_input.a.x), abs(u_input.a.x & u_input.c.x), _wgslsmith_clamp_i32(reverseBits(2147483647i), u_input.a.x | 1i, u_input.c.x))) >> (vec4<u32>(0u, var_2.a, 34097u, var_2.a) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(var_2.a, u_input.b.x), vec2<i32>(select(1i, var_3.x, !select(false, var_1.a, true)), u_input.a.x));
}

