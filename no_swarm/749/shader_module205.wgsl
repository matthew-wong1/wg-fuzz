struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(0i, 2147483647i, -149i, -3458i), vec4<i32>(4501i, -23111i, i32(-2147483648), 63645i), vec4<i32>(-58621i, 2147483647i, -16121i, -44250i), vec4<i32>(2733i, i32(-2147483648), 0i, 0i), vec4<i32>(68394i, -24359i, 1i, -10304i), vec4<i32>(18787i, 0i, -1i, -1i), vec4<i32>(60262i, -10217i, 0i, 20439i), vec4<i32>(-1i, -10113i, 1i, 54652i), vec4<i32>(17507i, 1i, i32(-2147483648), -29429i), vec4<i32>(-1i, 0i, 1i, 1i), vec4<i32>(14887i, -49751i, -2819i, i32(-2147483648)), vec4<i32>(43423i, -17995i, 2147483647i, 25510i), vec4<i32>(-1i, -41000i, 1i, -18902i), vec4<i32>(2147483647i, 87292i, 17284i, i32(-2147483648)), vec4<i32>(2147483647i, 45153i, 2147483647i, 1i), vec4<i32>(2147483647i, 55511i, -29573i, i32(-2147483648)), vec4<i32>(1i, -6284i, 19757i, 26378i), vec4<i32>(1i, 0i, 29107i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(-32220i, 2147483647i, 32848i, 45017i), vec4<i32>(2147483647i, 2147483647i, -30986i, -62654i), vec4<i32>(i32(-2147483648), 60708i, 32944i, -9683i), vec4<i32>(-2866i, 7467i, 2147483647i, 28180i), vec4<i32>(1i, 30480i, -41246i, 2147483647i), vec4<i32>(1i, 29020i, 46638i, -10187i), vec4<i32>(27787i, 11387i, -49681i, -1i), vec4<i32>(-65003i, 38039i, 928i, -30014i), vec4<i32>(-1i, -1i, 773i, 11399i), vec4<i32>(i32(-2147483648), 14103i, 6502i, -1i), vec4<i32>(15418i, 1i, -34048i, 1i), vec4<i32>(7948i, 1i, 13684i, 0i));

var<private> global1: array<f32, 14> = array<f32, 14>(-1555f, -608f, 896f, 140f, -904f, -1709f, -472f, 1466f, 1134f, -842f, -1201f, 265f, 1912f, -927f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global0 = array<vec4<i32>, 31>();
    let var_0 = select(_wgslsmith_add_vec2_u32(~(firstLeadingBit(vec2<u32>(u_input.b, 4294967295u)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_add_u32(u_input.b, 5974u), 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b << (u_input.b % 32u)) ^ ~(~vec2<u32>(4294967295u, u_input.b)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(25462u, u_input.b), vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, 1u)), ~vec2<u32>(0u, 6638u)), vec2<u32>(u_input.b, reverseBits(1u)))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(false, true, true)), vec3<bool>(true, true, any(vec3<bool>(false, true, false))))));
    global0 = array<vec4<i32>, 31>();
    let var_1 = Struct_1(_wgslsmith_clamp_i32((u_input.a.x >> (countOneBits(0u) % 32u)) >> (var_0.x % 32u), u_input.c, _wgslsmith_sub_i32(u_input.a.x >> (12738u % 32u), abs(u_input.a.x)) ^ _wgslsmith_mult_i32(-1i, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, var_0.x) >> ((0u << (u_input.b % 32u)) % 32u), 14u)]) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(34928u, var_0.x), 14u)])), ~var_0.x << (25857u % 32u), _wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 1u)), vec3<u32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 75001u, 1u), abs(vec3<u32>(4294967295u, 0u, 4294967295u)), vec3<u32>(u_input.b, 43640u, u_input.b) | vec3<u32>(0u, 1u, u_input.b)), true), vec3<u32>(u_input.b, countOneBits(~var_0.x), ~var_0.x)));
    let var_2 = 4294967295u;
    return StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a, u_input.a.x, _wgslsmith_add_i32(var_1.a, var_1.a)), firstTrailingBit(vec3<i32>(var_1.a, -7255i, 8892i) >> (vec3<u32>(var_2, var_1.c, var_0.x) % vec3<u32>(32u))), ~min(vec3<i32>(var_1.a, var_1.a, -7259i), vec3<i32>(var_1.a, u_input.a.x, 1i))) >> ((vec3<u32>(var_0.x, var_1.d << (u_input.b % 32u), 62107u) >> (vec3<u32>(10355u, ~var_2, var_1.c) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_i32(-1i, i32(-1i) * -1i), global1[_wgslsmith_index_u32(u_input.b, 14u)], 94989u, u_input.b);
    global1 = array<f32, 14>();
    global0 = array<vec4<i32>, 31>();
    global0 = array<vec4<i32>, 31>();
    global0 = array<vec4<i32>, 31>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(step(-1323f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(792f, _wgslsmith_div_f32(-1000f, 1313f))))));
}

