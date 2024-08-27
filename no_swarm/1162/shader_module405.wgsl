struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true));

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -983f), _wgslsmith_div_f32(-420f, 1476f), _wgslsmith_f_op_f32(1133f + -199f), _wgslsmith_f_op_f32(1000f * 1000f))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(139f)) * _wgslsmith_f_op_f32(f32(-1f) * -1634f)), 1416f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1768f, -811f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1194f + -926f), _wgslsmith_f_op_f32(1841f - -477f))))));
    let var_1 = vec4<i32>(u_input.a.x, ~53760i, -u_input.a.x, -(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(32504i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) >> (~(~4294967295u) % 32u)));
    global0 = array<vec4<bool>, 20>();
    let var_2 = Struct_2(var_1.yyy, 2147483647i);
    global1 = array<Struct_1, 16>();
    return 253f;
}

fn func_2(arg_0: bool) -> vec3<u32> {
    global0 = array<vec4<bool>, 20>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1341f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1049f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1268f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1048f)), -320f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(302f + -269f))), 107f)), -217f);
    let var_1 = global1[_wgslsmith_index_u32(0u, 16u)];
    global1 = array<Struct_1, 16>();
    let var_2 = 430f;
    return firstLeadingBit(~vec3<u32>(1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 78189u, 1u), vec3<u32>(var_1.a, 4294967295u, var_1.a)) % 32u), var_1.a, _wgslsmith_sub_u32(var_1.a, _wgslsmith_sub_u32(8002u, var_1.a))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> Struct_4 {
    let var_0 = countOneBits(-abs(select(abs(vec3<i32>(arg_1.a.c.x, arg_3, arg_1.d)), firstTrailingBit(arg_1.a.b), false)));
    let var_1 = vec3<u32>(arg_0.a.x, _wgslsmith_sub_u32(arg_1.c.x, arg_1.a.a), ~(arg_0.a.x & 73878u)) | ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 49673u, arg_1.c.x), func_2(arg_0.d)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.a, 4294967295u, 34878u), ~vec3<u32>(arg_1.c.x, 1u, arg_1.c.x)));
    var var_2 = firstTrailingBit(2147483647i);
    let var_3 = _wgslsmith_add_u32(var_1.x, var_1.x);
    global0 = array<vec4<bool>, 20>();
    return Struct_4(arg_0.a, arg_0.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, arg_1.d, ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, u_input.a.x), arg_1.a.b), ~(i32(-1i) * -2147483647i)), max(vec4<i32>(var_0.x, -arg_0.c.x, 1i, _wgslsmith_dot_vec2_i32(var_0.zz, var_0.xy)), arg_0.c), vec4<i32>(_wgslsmith_mod_i32(-37804i, abs(arg_1.a.c.x)), arg_0.b | countOneBits(-1i), _wgslsmith_mod_i32(-1i, u_input.a.x), arg_0.b << (1u % 32u))), !arg_0.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-224f, 794f, arg_1.e)) * _wgslsmith_f_op_f32(1279f * 566f)), _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, arg_1.e)))))));
}

fn func_4(arg_0: Struct_4) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(select(arg_0.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.e)), -1953f), !any(select(!vec3<bool>(arg_0.d, arg_0.d, false), vec3<bool>(arg_0.d, false, arg_0.d), !arg_0.d))));
    let var_1 = -max(~(-1i), u_input.a.x);
    let var_2 = Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-30274i), countOneBits(-51587i), var_1), countOneBits(arg_0.c.wyz), ~select(arg_0.c.wzw, arg_0.c.zxz, true)), _wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, arg_0.c.x, 1875i), arg_0.c.xwz) ^ -vec3<i32>(-2147483647i, u_input.a.x, arg_0.b)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, countOneBits(u_input.a.x)), _wgslsmith_clamp_i32(37538i, var_1, var_1) & abs(arg_0.c.x)), abs(12355i)));
    global1 = array<Struct_1, 16>();
    var var_3 = var_1;
    return -405f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-8850i, u_input.a.x), u_input.a), u_input.a.x), 1i, ~(-2147483647i), _wgslsmith_add_i32(~min(12096i, u_input.a.x), max(_wgslsmith_div_i32(u_input.a.x, 1i), 17484i))), vec2<f32>(_wgslsmith_f_op_f32(func_4(func_1(Struct_4(vec3<u32>(57832u, 4294967295u, 1u), u_input.a.x, vec4<i32>(-8121i, -49962i, u_input.a.x, -1i), true, -1764f), Struct_3(global1[_wgslsmith_index_u32(1u, 16u)], vec2<f32>(-270f, -539f), vec3<u32>(46478u, 100779u, 1u), 1i, false), -523f, -2147483647i))), _wgslsmith_f_op_f32(408f * func_1(Struct_4(vec3<u32>(22271u, 4294967295u, 547u), u_input.a.x, vec4<i32>(-9546i, -10399i, u_input.a.x, u_input.a.x), false, 1000f), Struct_3(Struct_1(4294967295u, vec3<i32>(u_input.a.x, 0i, -26794i), u_input.a), vec2<f32>(-268f, 242f), vec3<u32>(13807u, 4294967295u, 28566u), 42579i, false), _wgslsmith_f_op_f32(-1000f - 1375f), 0i).e)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f + _wgslsmith_f_op_f32(func_4(Struct_4(vec3<u32>(14370u, 56465u, 1u), -1i, vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 11646i), false, 2199f))))), _wgslsmith_f_op_f32(-1f)));
}

