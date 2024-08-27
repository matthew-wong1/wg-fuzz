struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(1141f, 340f, 321f, 737f, -654f, 956f, 247f, 943f, 447f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_3(vec4<i32>(firstLeadingBit(-9067i), u_input.b.x, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(u_input.d.x, 12195i), vec2<i32>(u_input.b.x, u_input.b.x)))), u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(587f, 2020f, global0[_wgslsmith_index_u32(u_input.a, 9u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], -646f, -218f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], -1856f, global0[_wgslsmith_index_u32(1u, 9u)])))))), _wgslsmith_f_op_f32(floor(1403f)), ~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(31690i, u_input.c.x, u_input.c.x, 23185i) ^ vec4<i32>(-10435i, -1i, u_input.c.x, -63114i), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.d.x, u_input.d.x)), reverseBits(vec4<i32>(-1i, u_input.b.x, u_input.c.x, u_input.b.x))));
    return vec3<u32>(u_input.a, ~(~_wgslsmith_mod_u32(~24610u, u_input.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a & u_input.a, ~u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, ~1u, u_input.a)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec3<f32>) -> u32 {
    global0 = array<f32, 9>();
    var var_0 = _wgslsmith_mod_vec3_u32(abs(~func_3()), firstTrailingBit(_wgslsmith_mult_vec3_u32(~max(vec3<u32>(u_input.a, 9671u, 0u), vec3<u32>(u_input.a, 23715u, u_input.a)), ~(~vec3<u32>(u_input.a, 15558u, u_input.a)))));
    var var_1 = ~3062u;
    var var_2 = !vec2<bool>(!(true && all(vec4<bool>(false, true, false, false))), all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), true)));
    var_2 = select(vec2<bool>((any(vec4<bool>(false, true, var_2.x, var_2.x)) | (1044f > global0[_wgslsmith_index_u32(1u, 9u)])) & false, var_2.x || any(select(vec4<bool>(true, true, false, var_2.x), vec4<bool>(true, var_2.x, var_2.x, true), vec4<bool>(var_2.x, true, false, false)))), !(!vec2<bool>(any(vec2<bool>(var_2.x, var_2.x)), !var_2.x)), true);
    return 83565u;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_1.x, u_input.a), abs(4294967295u), 9270u | u_input.a, 14565u) << (~firstLeadingBit(vec4<u32>(1u, arg_2.b.x, arg_2.b.x, arg_1.x)) % vec4<u32>(32u)), ~vec4<u32>(func_2(arg_3.d.xx, vec2<f32>(global0[_wgslsmith_index_u32(arg_2.c, 9u)], -569f), 60714i, vec3<f32>(793f, arg_3.c, -1000f)), 4294967295u, 3857u & u_input.a, 1826u));
    let var_1 = max(u_input.a, select(arg_1.x, max(~(~var_0), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(913f)) - _wgslsmith_f_op_f32(min(171f, global0[_wgslsmith_index_u32(arg_1.x, 9u)]))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(376f, 152f))))));
    var var_2 = -1i;
    var var_3 = max(~vec2<u32>(0u, firstLeadingBit(var_1 ^ u_input.a)), ~(_wgslsmith_div_vec2_u32(~arg_1, ~arg_1) | arg_2.b));
    var_2 = u_input.b.x;
    return vec3<bool>(arg_0.a.x && (arg_0.a.x | false), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    let var_0 = ~(reverseBits(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.zx, u_input.d.zy), u_input.c << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))) << (vec2<u32>(1u >> (~u_input.a % 32u), u_input.a) % vec2<u32>(32u)));
    global0 = array<f32, 9>();
    var var_1 = Struct_4(min(vec3<i32>(~u_input.c.x, u_input.c.x, -9166i), select(_wgslsmith_div_vec3_i32(vec3<i32>(76257i, var_0.x, var_0.x), vec3<i32>(var_0.x, 7021i, u_input.d.x)), -firstTrailingBit(u_input.d), func_1(Struct_2(vec3<bool>(true, true, false)), firstTrailingBit(vec2<u32>(4294967295u, 36658u)), Struct_1(1220u, vec2<u32>(u_input.a, 14407u), 45817u), Struct_3(vec4<i32>(var_0.x, 4149i, 1i, u_input.c.x), vec3<f32>(global0[_wgslsmith_index_u32(27651u, 9u)], global0[_wgslsmith_index_u32(9446u, 9u)], 1328f), global0[_wgslsmith_index_u32(7133u, 9u)], vec4<i32>(2147483647i, var_0.x, u_input.b.x, 2147483647i))))), _wgslsmith_sub_vec4_i32(select(min(select(vec4<i32>(-1i, var_0.x, var_0.x, 18766i), vec4<i32>(var_0.x, var_0.x, 22518i, u_input.d.x), true), ~vec4<i32>(-2147483647i, u_input.d.x, -2147483647i, 52825i)), reverseBits(vec4<i32>(u_input.b.x, u_input.d.x, u_input.c.x, 0i) & vec4<i32>(u_input.c.x, u_input.b.x, u_input.c.x, 11831i)), all(vec2<bool>(true, true))), vec4<i32>((u_input.b.x ^ -23077i) & reverseBits(var_0.x), ~(-u_input.d.x), var_0.x >> (30128u % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.zz, vec2<i32>(-8547i, u_input.b.x)), vec2<i32>(var_0.x, u_input.d.x)))));
    var var_2 = var_1.a.x;
    var var_3 = Struct_3((var_1.b | vec4<i32>(-1i, firstTrailingBit(u_input.b.x), abs(-1i), abs(-2147483647i))) >> (vec4<u32>(max(u_input.a, _wgslsmith_add_u32(22732u, u_input.a)), min(u_input.a, _wgslsmith_add_u32(0u, 1u)), u_input.a, 56858u) % vec4<u32>(32u)), vec3<f32>(-249f, -1000f, -3382f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 9u)] + 468f)))), global0[_wgslsmith_index_u32(0u, 9u)]), vec4<i32>(~_wgslsmith_sub_i32(-2147483647i, var_0.x), _wgslsmith_clamp_i32(-abs(0i), -var_1.a.x, -(~0i)), u_input.c.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(abs(_wgslsmith_div_i32(var_1.a.x, -2147483647i)), var_3.d.x, firstTrailingBit(_wgslsmith_clamp_i32(1i, -27187i, var_3.d.x)), (var_3.a.x ^ u_input.c.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(18060u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a)) % 32u))), u_input.a ^ 1u);
}

