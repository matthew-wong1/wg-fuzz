struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(148f, -1480f, 367f), vec3<f32>(1419f, -1397f, -528f), vec3<f32>(733f, -1102f, 912f), vec3<f32>(-2463f, -591f, -340f), vec3<f32>(-787f, 649f, -1957f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> f32 {
    global1 = Struct_1(~global1.b, _wgslsmith_mod_u32(reverseBits(_wgslsmith_mod_u32(0u, 4294967295u)), u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(967f)) * _wgslsmith_f_op_f32(select(global1.c, _wgslsmith_div_f32(126f, -311f), _wgslsmith_f_op_f32(-1230f - global1.c) > 570f))));
    let var_0 = Struct_1(arg_0, ~(~(_wgslsmith_dot_vec2_u32(u_input.c.wy, vec2<u32>(1u, global1.b)) & u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c, 1245f, false))) * _wgslsmith_f_op_f32(floor(global1.c)))));
    var var_1 = var_0;
    global1 = Struct_1(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(~firstLeadingBit(9572u), var_1.b, select(global1.b, 2154u, true)), abs(max(u_input.b.yxy, vec3<u32>(arg_0, u_input.c.x, var_0.b)))), _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(var_0.c + var_1.c)));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2048f + _wgslsmith_f_op_f32(-var_0.c)), 1160f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - var_0.c));
    return _wgslsmith_f_op_f32(-global1.c);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(39779u, global1.b & countOneBits(u_input.e), _wgslsmith_div_f32(-1813f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_2.c)) + -468f)));
    let var_1 = ~_wgslsmith_mod_u32(~(~global1.b), _wgslsmith_mult_u32(~global1.a, ~12837u));
    let var_2 = countOneBits(u_input.c | vec4<u32>(u_input.e, global1.b, _wgslsmith_add_u32(0u >> (arg_2.b % 32u), firstTrailingBit(arg_2.b)), max(_wgslsmith_mod_u32(arg_2.b, 1u), 20960u)));
    global2 = array<vec3<f32>, 5>();
    global0 = array<vec2<bool>, 2>();
    return 574f;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_1(global1.b, arg_0, _wgslsmith_f_op_f32(step(133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(u_input.b.x)), false, Struct_1(global1.a, 197u, global1.c)))))));
    global0 = array<vec2<bool>, 2>();
    global2 = array<vec3<f32>, 5>();
    global2 = array<vec3<f32>, 5>();
    let var_1 = min(vec4<i32>(abs(abs(8780i)), _wgslsmith_add_i32(-u_input.d, -1i), -2147483647i, reverseBits(_wgslsmith_mod_i32(19277i, 1i))) & (_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.d, 1i, u_input.d, u_input.d), ~vec4<i32>(u_input.d, -10614i, u_input.d, u_input.a.x)) >> (vec4<u32>(~4294967295u, ~u_input.c.x, 4294967295u >> (global1.b % 32u), arg_0 & 1u) % vec4<u32>(32u))), vec4<i32>(select(-(~44219i), 1i, !all(vec3<bool>(false, false, true))), u_input.a.x, select(-u_input.a.x, u_input.d & 1i, true) | _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(36617i, -14712i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.d, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.d, u_input.a.x, u_input.d, u_input.a.x)), vec4<i32>(u_input.d, u_input.d, u_input.a.x, u_input.d) >> (u_input.b % vec4<u32>(32u))), -_wgslsmith_mult_i32(_wgslsmith_add_i32(10005i, -5109i), 27031i & u_input.d)));
    return ~arg_0;
}

fn func_1() -> StorageBuffer {
    let var_0 = ~vec2<u32>(~func_2(global1.a), u_input.c.x);
    let var_1 = Struct_1(min(var_0.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.x, 1u), u_input.e)) & 1u, var_0.x, global1.c);
    return StorageBuffer(1020f, u_input.c.xyx);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

