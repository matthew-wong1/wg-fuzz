struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    global0 = array<f32, 24>();
    return arg_0.c.a;
}

fn func_3() -> u32 {
    global0 = array<f32, 24>();
    var var_0 = Struct_1(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, false, false)))), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c.x, 1u), 1u)), 46394u), select(u_input.c.x, firstLeadingBit(4294967295u), true), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b) ^ select(-vec4<i32>(0i, -6198i, -1i, u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false)), abs(vec4<i32>(40298i, -1i, 79926i, -1i))));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(min(var_0.b ^ var_0.b, _wgslsmith_mod_u32(4294967295u, var_0.b)), var_0.c), u_input.a.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, u_input.c.x, _wgslsmith_sub_u32(var_0.c, u_input.a.x)), var_0.b)), 33788u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(6969u, 24u)], -1162f, global0[_wgslsmith_index_u32(0u, 24u)]) * vec3<f32>(-523f, global0[_wgslsmith_index_u32(3432u, 24u)], global0[_wgslsmith_index_u32(var_0.b, 24u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-232f, 704f, global0[_wgslsmith_index_u32(1u, 24u)])), vec3<bool>(true, false, var_0.a))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(37823u, 24u)], global0[_wgslsmith_index_u32(var_0.c, 24u)], -1091f))), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.c, 24u)]), global0[_wgslsmith_index_u32(~7174u, 24u)], global0[_wgslsmith_index_u32(~u_input.a.x, 24u)]), select(select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.a, true, true), true), vec3<bool>(var_0.a, true, true), !vec3<bool>(var_0.a, var_0.a, true))))));
    global0 = array<f32, 24>();
    return ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), abs(vec2<u32>(51352u, u_input.c.x))), ~_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(8879u, var_0.b))));
}

fn func_1() -> f32 {
    let var_0 = vec3<i32>(-30926i, -u_input.b, 0i);
    var var_1 = Struct_1(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(Struct_2(Struct_1(true, u_input.c.x, 60328u, vec4<i32>(u_input.b, var_0.x, var_0.x, 8585i)), vec2<i32>(var_0.x, var_0.x), Struct_1(false, 1u, 4294967295u, vec4<i32>(u_input.b, -17880i, 2147483647i, -37490i)), u_input.b, Struct_1(true, u_input.a.x, 4294967295u, vec4<i32>(-2147483647i, u_input.b, u_input.b, -41593i))), Struct_1(true, u_input.c.x, u_input.a.x, vec4<i32>(-2147483647i, var_0.x, var_0.x, -5556i)), vec4<f32>(-1000f, 123f, global0[_wgslsmith_index_u32(20095u, 24u)], -772f)) && true)), _wgslsmith_mod_u32(618u, func_3()), u_input.a.x, countOneBits(max(_wgslsmith_add_vec4_i32(vec4<i32>(-6347i, var_0.x, u_input.b, 4757i), vec4<i32>(-38148i, var_0.x, 61177i, var_0.x)), -vec4<i32>(u_input.b, u_input.b, 1956i, u_input.b)) ^ firstLeadingBit(vec4<i32>(25071i, var_0.x, 108481i, var_0.x) << (vec4<u32>(1u, 1u, u_input.c.x, 16568u) % vec4<u32>(32u)))));
    global0 = array<f32, 24>();
    return global0[_wgslsmith_index_u32(max(14159u, 59460u), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1158f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 24u)] + 431f), _wgslsmith_f_op_f32(func_1()))))), global0[_wgslsmith_index_u32(firstLeadingBit(~min(~u_input.c.x, 39353u)), 24u)]);
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_mult_i32(u_input.b, 2147483647i) >= _wgslsmith_div_i32(u_input.b, 2375i), u_input.c.x, 1u, _wgslsmith_clamp_vec4_i32(vec4<i32>(-33287i, 1i, -2147483647i, u_input.b), vec4<i32>(u_input.b, 25377i, 3612i, -14993i), -vec4<i32>(2147483647i, 2892i, -25504i, 0i))), -select(vec2<i32>(-3457i, -1i), vec2<i32>(u_input.b, -2147483647i), vec2<bool>(false, false)) ^ -firstLeadingBit(vec2<i32>(-4681i, u_input.b)), Struct_1(_wgslsmith_f_op_f32(ceil(953f)) >= 2237f, 4294967295u, 0u, select(vec4<i32>(21384i, -1i, u_input.b, u_input.b), -vec4<i32>(1i, u_input.b, u_input.b, -2147483647i), vec4<bool>(true, true, true, true))), ~u_input.b, Struct_1(false, ~1u, u_input.c.x, select(vec4<i32>(u_input.b, u_input.b, 2147483647i, -22426i) & vec4<i32>(u_input.b, u_input.b, -14483i, u_input.b), select(vec4<i32>(u_input.b, 1i, 40047i, 2147483647i), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), false), true))));
    global0 = array<f32, 24>();
    let var_2 = reverseBits(min(abs(select(u_input.c, vec2<u32>(u_input.a.x, u_input.a.x), var_1.a.c.a)), countOneBits(abs(vec2<u32>(u_input.c.x, 15062u)) & max(u_input.a.zy, u_input.c))));
    global0 = array<f32, 24>();
    var var_3 = select(select(select(!select(vec2<bool>(false, var_1.a.c.a), vec2<bool>(var_1.a.a.a, var_1.a.a.a), false), select(vec2<bool>(false, var_1.a.c.a), vec2<bool>(true, true), !vec2<bool>(true, var_1.a.a.a)), var_1.a.e.a), select(vec2<bool>(true, true), vec2<bool>(true, var_1.a.c.a), any(!vec2<bool>(false, var_1.a.a.a))), !var_1.a.e.a), select(vec2<bool>(_wgslsmith_div_u32(var_2.x, var_1.a.a.b) <= 1u, !var_1.a.c.a && !var_1.a.a.a), select(vec2<bool>(all(vec3<bool>(var_1.a.c.a, false, true)), !var_1.a.a.a), !vec2<bool>(var_1.a.c.a, var_1.a.c.a), var_1.a.e.a), select(vec2<bool>(true, true), vec2<bool>(false, var_1.a.e.a), !vec2<bool>(var_1.a.e.a, true))), vec2<bool>((u_input.b > u_input.b) & all(vec4<bool>(true, true, true, true)), var_1.a.a.a));
    var var_4 = -var_1.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_1.a.a.d, vec4<i32>(9215i >> (u_input.a.x % 32u), firstTrailingBit(u_input.b), _wgslsmith_sub_i32(66790i, var_1.a.c.d.x), _wgslsmith_mult_i32(u_input.b, var_1.a.b.x)), !(u_input.c.x <= var_1.a.a.b)), -625f, -u_input.b, 3774u >> (var_1.a.a.b % 32u));
}

