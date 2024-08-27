struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 237f);

var<private> global1: array<vec2<u32>, 14>;

var<private> global2: array<Struct_1, 25>;

var<private> global3: vec3<u32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<bool>) -> vec2<i32> {
    let var_0 = vec4<bool>(true, false, !(any(vec3<bool>(true, arg_2.x, true)) & arg_1), -reverseBits(~2147483647i) != abs(abs(select(u_input.b, u_input.d, arg_1))));
    var var_1 = 1i;
    global2 = array<Struct_1, 25>();
    var_1 = min(i32(-1i) * -2147483647i, _wgslsmith_div_i32(-44230i, _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(-68945i, -15744i), _wgslsmith_div_i32(2147483647i, -23783i)), u_input.d)));
    global1 = array<vec2<u32>, 14>();
    return vec2<i32>((u_input.d & abs(0i)) << (abs(~firstLeadingBit(1u)) % 32u), ~abs((0i >> (0u % 32u)) >> (global3.x % 32u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(95371u) ^ _wgslsmith_mod_u32(firstTrailingBit(global3.x), u_input.c), ~u_input.c), 25u)];
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1212f))));
    global2 = array<Struct_1, 25>();
    var var_2 = 0i;
    global0 = global2[_wgslsmith_index_u32(u_input.c, 25u)];
    return vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1355u, 0u, 110441u), vec4<u32>(u_input.c, global3.x, 9433u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, global3.x, 20822u), vec4<u32>(1u, global3.x, u_input.a.x, 4294967295u)) << ((vec4<u32>(1u, global3.x, global3.x, u_input.c) >> (vec4<u32>(global3.x, u_input.c, global3.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)))), abs(u_input.a.x), _wgslsmith_clamp_u32(abs(3904u), global3.x, u_input.c << (30939u % 32u)), 18929u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> f32 {
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(func_2(firstTrailingBit(u_input.a), false, vec2<bool>(arg_0.a, false)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-1i, u_input.b) | vec2<i32>(u_input.b, u_input.d))) != 0i, 457f);
    let var_0 = _wgslsmith_div_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 17762u, 31919u, 1u) << (vec4<u32>(arg_2, 1u, u_input.c, 0u) % vec4<u32>(32u)), func_3(Struct_1(true, 865f), vec4<f32>(733f, 811f, 398f, -1220f), vec3<f32>(arg_1.x, arg_0.b, arg_0.b))), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2, 87370u, 58018u, 33980u), abs(vec4<u32>(arg_2, global3.x, 4294967295u, 6127u))), select(vec4<bool>(global0.a, true, global0.a, arg_0.a), !vec4<bool>(false, false, false, global0.a), arg_0.a)) & ~firstLeadingBit(vec4<u32>(15177u, u_input.a.x, u_input.c, global3.x) | vec4<u32>(arg_2, u_input.c, arg_2, arg_2)), ~(func_3(global2[_wgslsmith_index_u32(u_input.c, 25u)], vec4<f32>(global0.b, 900f, -481f, 816f), vec3<f32>(global0.b, -639f, global0.b)) & vec4<u32>(1u, 1u, 11574u, 4294967295u)) & (select(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, 0u, u_input.a.x, arg_2), vec4<u32>(56565u, 0u, global3.x, 1u)), vec4<u32>(arg_2, 1u, global3.x, 32617u), true) & _wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, arg_2, 18471u, 18937u), vec4<u32>(4294967295u, 55880u, arg_2, arg_2), vec4<bool>(global0.a, global0.a, global0.a, false)), vec4<u32>(63089u, u_input.c, global3.x, 4294967295u) & vec4<u32>(26226u, 0u, arg_2, arg_2), vec4<u32>(global3.x, arg_2, 1u, u_input.c))));
    global2 = array<Struct_1, 25>();
    global1 = array<vec2<u32>, 14>();
    global1 = array<vec2<u32>, 14>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + 1586f), global0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 781f))) - arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2258f, -1000f, 654f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1161f - 2065f) - 549f))))));
    var var_1 = Struct_1(global0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))))));
    var var_2 = global2[_wgslsmith_index_u32(u_input.a.x & 0u, 25u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(!var_1.a, var_2.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xw - vec2<f32>(754f, global0.b)) * var_0.yx), 42097u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 396u, 20968u)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2330f + _wgslsmith_f_op_f32(round(var_2.b))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_4 = global2[_wgslsmith_index_u32(~4294967295u, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(1u, ~27449u, global3.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-u_input.d, ~u_input.d), vec2<i32>(~u_input.d, 15480i)), vec2<i32>(-32150i, -33995i)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.b, ~53216i, _wgslsmith_clamp_i32(u_input.b, 920i, -2147483647i)), ~select(vec3<i32>(u_input.b, u_input.d, -1i), vec3<i32>(-1i, -56124i, -2147483647i), vec3<bool>(false, false, var_1.a))), -(vec3<i32>(-2147483647i, u_input.d, u_input.b) << (vec3<u32>(u_input.a.x, u_input.c, u_input.c) % vec3<u32>(32u))) ^ (abs(vec3<i32>(u_input.b, u_input.d, u_input.b)) ^ (vec3<i32>(u_input.b, 9183i, u_input.b) & vec3<i32>(2147483647i, -2147483647i, u_input.d)))), min(1i, (-1i | _wgslsmith_add_i32(2147483647i, u_input.d)) >> (33795u % 32u)));
}

