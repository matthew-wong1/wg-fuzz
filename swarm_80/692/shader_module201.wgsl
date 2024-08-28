struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<u32>(13252u, 0u), 40166u), Struct_1(vec2<u32>(1u, 38934u), 15922u), Struct_1(vec2<u32>(14969u, 4294967295u), 27564u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 43799u), Struct_1(vec2<u32>(37309u, 4294967295u), 60663u), Struct_1(vec2<u32>(4294967295u, 1u), 4294967295u), Struct_1(vec2<u32>(70637u, 44465u), 4294967295u), Struct_1(vec2<u32>(4294967295u, 1u), 22243u), Struct_1(vec2<u32>(49098u, 4294967295u), 0u), Struct_1(vec2<u32>(17779u, 4294967295u), 44973u), Struct_1(vec2<u32>(1u, 4294967295u), 1123u), Struct_1(vec2<u32>(0u, 1u), 22256u), Struct_1(vec2<u32>(106797u, 0u), 1u), Struct_1(vec2<u32>(4351u, 4294967295u), 1u), Struct_1(vec2<u32>(0u, 4294967295u), 37194u), Struct_1(vec2<u32>(0u, 54951u), 397u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 0u), Struct_1(vec2<u32>(1u, 1u), 10151u), Struct_1(vec2<u32>(32195u, 63379u), 2392u), Struct_1(vec2<u32>(0u, 0u), 80552u), Struct_1(vec2<u32>(35011u, 0u), 4294967295u), Struct_1(vec2<u32>(4294967295u, 64701u), 61337u), Struct_1(vec2<u32>(44284u, 1u), 0u), Struct_1(vec2<u32>(4294967295u, 60690u), 115006u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    return Struct_2(Struct_1(u_input.a, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), firstTrailingBit(vec2<u32>(43405u, 4294967295u)))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: i32) -> bool {
    global0 = array<vec3<bool>, 26>();
    var var_0 = Struct_4(1i);
    var_0 = Struct_4(1i);
    var var_1 = ~1u;
    var var_2 = Struct_4(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, arg_3, var_0.a, -1i) | (vec4<i32>(2147483647i, -16925i, -1i, u_input.b) & vec4<i32>(0i, arg_3, var_0.a, 53255i)), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(0i, u_input.c), -70949i, _wgslsmith_mod_i32(arg_3, 2147483647i))), _wgslsmith_sub_i32(26956i, i32(-1i) * -1i)));
    return !select(true, any(select(select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_1), vec2<bool>(false, true)), !vec2<bool>(false, arg_1), select(vec2<bool>(true, false), vec2<bool>(arg_2, false), true))), any(!(!global0[_wgslsmith_index_u32(u_input.a.x, 26u)])));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> i32 {
    var var_0 = select(!vec3<bool>(func_3(func_2(vec4<i32>(arg_1.a, -26293i, 1i, -14775i)), true, all(vec4<bool>(false, true, false, true)), -u_input.b), !any(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, true, true, true))), !select(!global0[_wgslsmith_index_u32(u_input.a.x, 26u)], !global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(arg_0.b, 26u)]), global0[_wgslsmith_index_u32(20998u, 26u)]);
    var var_1 = arg_0;
    var_1 = arg_0;
    global0 = array<vec3<bool>, 26>();
    let var_2 = !global0[_wgslsmith_index_u32(22041u, 26u)];
    return 45494i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -4852i;
    var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(func_1(Struct_3(-743f, 83083u), Struct_4(1i)), -u_input.c, -u_input.b) & -vec3<i32>(1i, i32(-1i) * -1i, firstLeadingBit(u_input.c)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.b, 9346i), vec3<i32>(min(51329i, u_input.c) | u_input.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 44837i, -4295i), vec3<i32>(u_input.b, -27337i, u_input.b)), -u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, 2147483647i), vec3<i32>(u_input.c, 0i, 5794i))), _wgslsmith_div_i32(_wgslsmith_add_i32(0i, u_input.b), 27715i))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-1432f * _wgslsmith_f_op_f32(-231f + -180f)), u_input.a.x);
    let var_2 = abs(max(-(~vec2<i32>(-1i, -1i) & vec2<i32>(1i, u_input.b)), max(vec2<i32>(-u_input.b, _wgslsmith_mod_i32(2147483647i, u_input.b)), vec2<i32>(u_input.c, u_input.c) >> (~vec2<u32>(23307u, 73354u) % vec2<u32>(32u)))));
    let var_3 = Struct_1(abs(select(~(vec2<u32>(45240u, u_input.a.x) << (u_input.a % vec2<u32>(32u))), func_2(-vec4<i32>(u_input.b, 149i, 8138i, var_2.x)).a.a, vec2<bool>(true, all(vec2<bool>(true, false))))), ~abs(abs(abs(10803u))));
    let var_4 = var_2;
    let var_5 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a)));
    global0 = array<vec3<bool>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.a, var_1.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2454f * var_5)))), (firstLeadingBit(abs(vec3<i32>(var_2.x, var_4.x, var_4.x))) << (reverseBits(~vec3<u32>(33185u, var_3.a.x, 61295u)) % vec3<u32>(32u))) ^ vec3<i32>(1i, abs(-30889i), 1i), var_3.a.x);
}

