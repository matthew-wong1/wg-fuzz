struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec2<u32>(4294967295u, 113813u), vec4<i32>(i32(-2147483648), 16617i, -1i, -10932i)), 30666u, 24988u), Struct_2(Struct_1(vec2<u32>(4294967295u, 2560u), vec4<i32>(-48118i, 2147483647i, -10681i, 2147483647i)), 38442u, 15186u), Struct_2(Struct_1(vec2<u32>(1u, 23655u), vec4<i32>(24389i, -13295i, -25693i, -1i)), 1u, 15554u), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(i32(-2147483648), -3391i, -9527i, 9201i)), 8814u, 4294967295u), Struct_2(Struct_1(vec2<u32>(4294967295u, 35726u), vec4<i32>(i32(-2147483648), -20815i, i32(-2147483648), -5416i)), 16397u, 81190u), Struct_2(Struct_1(vec2<u32>(122359u, 61220u), vec4<i32>(2147483647i, -29218i, 2147483647i, 1i)), 1211u, 19147u), Struct_2(Struct_1(vec2<u32>(0u, 67532u), vec4<i32>(0i, 15926i, 62242i, -10974i)), 8228u, 31970u), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec4<i32>(-1i, 0i, 0i, 20170i)), 48867u, 1u), Struct_2(Struct_1(vec2<u32>(11163u, 4294967295u), vec4<i32>(-1i, -31660i, -1i, 25484i)), 1u, 11955u), Struct_2(Struct_1(vec2<u32>(0u, 23361u), vec4<i32>(21805i, -1i, 477i, -83705i)), 20595u, 0u), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec4<i32>(-1i, 0i, i32(-2147483648), -1i)), 1u, 8927u), Struct_2(Struct_1(vec2<u32>(1u, 25382u), vec4<i32>(-19075i, 2147483647i, -1i, i32(-2147483648))), 4294967295u, 1u), Struct_2(Struct_1(vec2<u32>(8816u, 49963u), vec4<i32>(-49738i, i32(-2147483648), i32(-2147483648), 2147483647i)), 1u, 39255u), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 52621i)), 28474u, 37266u), Struct_2(Struct_1(vec2<u32>(0u, 52986u), vec4<i32>(0i, 29526i, 1i, 2147483647i)), 43562u, 12091u), Struct_2(Struct_1(vec2<u32>(58361u, 0u), vec4<i32>(368i, i32(-2147483648), 59545i, -1i)), 1u, 4294967295u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-1331f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -309f))) - arg_1)));
    let var_1 = vec2<i32>(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.x, -1i), -2147483647i), -(~_wgslsmith_add_i32(u_input.a, 28150i))) | _wgslsmith_add_vec2_i32(-min(-vec2<i32>(arg_0.x, 10509i), -arg_0), -arg_0);
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    return _wgslsmith_sub_i32(var_1.x, 0i);
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_2, 16>();
    let var_0 = true;
    global0 = array<Struct_2, 16>();
    let var_1 = !vec2<bool>(select((u_input.b.x < 0u) | var_0, var_0, true), var_0);
    global0 = array<Struct_2, 16>();
    return Struct_2(Struct_1(~(~vec2<u32>(u_input.b.x, u_input.c)), vec4<i32>(func_3(-vec2<i32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -756f)), u_input.a, _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.a, 50784i), vec2<i32>(-64604i, 54156i)), vec2<i32>(u_input.a, 1i)), _wgslsmith_mult_i32(max(u_input.a, 115i), ~u_input.a))), u_input.d.x, ~countOneBits(_wgslsmith_mod_u32(u_input.d.x << (u_input.d.x % 32u), 47092u)));
}

fn func_1() -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(firstTrailingBit(u_input.b.x ^ u_input.b.x), ~firstTrailingBit(22734u))) | (_wgslsmith_div_u32(u_input.d.x, ~(~u_input.d.x)) & ~1u), 16u)];
    var var_1 = func_2();
    var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 16u)];
    global0 = array<Struct_2, 16>();
    var_1 = Struct_2(Struct_1(vec2<u32>(var_0.a.a.x | _wgslsmith_mult_u32(46516u, 21967u), ~abs(var_0.c)), -var_1.a.b), var_1.b | reverseBits((var_0.c & var_0.a.a.x) >> (_wgslsmith_mult_u32(var_1.a.a.x, 60742u) % 32u)), (u_input.b.x & (_wgslsmith_dot_vec3_u32(vec3<u32>(44817u, 46714u, 39711u), vec3<u32>(0u, 0u, 64214u)) ^ _wgslsmith_div_u32(0u, var_1.b))) & reverseBits(~(u_input.c << (0u % 32u))));
    return select(!(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)))), !vec4<bool>(~0u >= u_input.d.x, select(true, true, true), !any(vec2<bool>(true, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!func_1());
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(2147483647i >> ((u_input.c | 35873u) % 32u), -func_2().a.b.x), ~abs(~vec4<u32>(0u, u_input.b.x, 1u, u_input.d.x)));
}

