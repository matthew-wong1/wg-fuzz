struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: vec2<u32> = vec2<u32>(28391u, 0u);

var<private> global2: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec4<bool> {
    global1 = ~abs(vec2<u32>(~u_input.a, 1u)) & vec2<u32>(global1.x, ~1u);
    var var_0 = Struct_1(~global1.x);
    let var_1 = Struct_3(_wgslsmith_mult_i32(i32(-1i) * -31302i, ~(-890i)), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 20u)], any(!select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.a, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(global1.x, 20u)]), false)), global0[_wgslsmith_index_u32(global1.x, 20u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f))));
    return !select(var_1.b, vec4<bool>(var_1.b.x, !(var_1.b.x && false), false, 2147483647i > global2.x), !var_1.b);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1168f, 785f, -634f) * vec4<f32>(arg_1, 924f, arg_1, arg_1))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, arg_1, arg_1, -373f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1, 391f, 274f) + vec4<f32>(arg_1, 1206f, arg_1, 719f)), vec4<f32>(832f, arg_1, 1000f, -1495f), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, 991f, arg_1, 545f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1425f, arg_1, arg_1, 509f) + vec4<f32>(arg_1, arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, arg_1, arg_1, 576f)))))))), !select(func_3(), !(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 20u)], arg_0.x)), !vec4<bool>(false, true, arg_0.x, true))));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-arg_1), Struct_4(_wgslsmith_f_op_f32(-386f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))), _wgslsmith_div_vec3_u32(~select(vec3<u32>(global1.x, 1u, global1.x), vec3<u32>(7390u, global1.x, u_input.a), true), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 60276u, 1u), ~vec3<u32>(1u, 53897u, global1.x), reverseBits(vec3<u32>(5816u, 0u, 0u))))), vec4<i32>(~u_input.b, -_wgslsmith_mod_i32(1525i, 3153i) >> (_wgslsmith_div_u32(0u << (global1.x % 32u), 55415u) % 32u), u_input.c.x, ~(~(~(-2147483647i)))), vec4<i32>(abs(u_input.c.x), reverseBits(2147483647i), -25289i, _wgslsmith_div_i32(45038i, u_input.c.x)) ^ (reverseBits(vec4<i32>(-7008i, 1i, u_input.c.x, u_input.c.x)) ^ vec4<i32>(abs(global2.x), u_input.b ^ global2.x, u_input.b << (0u % 32u), _wgslsmith_mod_i32(u_input.c.x, 7923i))), var_0);
    let var_2 = Struct_5(1f, var_1.b, _wgslsmith_div_vec4_i32(var_1.d, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, -9764i), firstTrailingBit(-2147483647i)), max(u_input.b, var_1.c.x) & global2.x, _wgslsmith_clamp_i32(-22440i, _wgslsmith_div_i32(-27272i, 37439i), -global2.x), global2.x ^ -2781i)), ~var_1.d, vec4<f32>(-210f, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1715f, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 - -229f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-731f * arg_1)) * _wgslsmith_f_op_f32(arg_1 + -1036f))));
    global2 = _wgslsmith_div_vec3_i32(select(~countOneBits(vec3<i32>(-1i, 2147483647i, var_2.d.x)), countOneBits(-var_1.c.yxz), vec3<bool>(true, (false | arg_0.x) & arg_0.x, arg_0.x | global0[_wgslsmith_index_u32(~global1.x, 20u)])), select((vec3<i32>(-1i, -2147483647i, 2147483647i) >> (select(var_1.b.b, var_2.b.b, global0[_wgslsmith_index_u32(global1.x, 20u)]) % vec3<u32>(32u))) & -vec3<i32>(var_1.c.x, -1i, var_1.d.x), _wgslsmith_mod_vec3_i32(abs(-var_2.c.xwx), countOneBits(countOneBits(vec3<i32>(-4126i, u_input.c.x, var_1.c.x)))), any(!(!arg_0))));
    let var_3 = Struct_3(var_2.d.x, func_3(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-558f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(161f)) + var_1.e.x))));
    return ~(~var_1.b.b.zx);
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> u32 {
    global0 = array<bool, 20>();
    global2 = max(~vec3<i32>(_wgslsmith_add_i32(2617i, 0i), 1i, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(-8216i, ~global2.x, -global2.x), vec3<i32>(0i & global2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(30682i, 9805i, -1i, 28215i), vec4<i32>(-9956i, -1i, global2.x, global2.x)), u_input.b), vec3<i32>(_wgslsmith_div_i32(u_input.b, 55210i), -5562i, -37932i))) & _wgslsmith_add_vec3_i32(select(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-60899i, 0i, -21174i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, -1i), vec3<i32>(global2.x, u_input.c.x, u_input.b))), select(-vec3<i32>(u_input.c.x, 2147483647i, global2.x), -vec3<i32>(14511i, global2.x, -10724i), all(vec3<bool>(arg_0, true, true))), !select(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 20u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(34011u, 20u)], true), vec3<bool>(global0[_wgslsmith_index_u32(13444u, 20u)], arg_0, arg_0))), vec3<i32>(-1i, -_wgslsmith_mod_i32(global2.x, global2.x), ~(-global2.x)));
    global2 = vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, u_input.c.x, -34803i) ^ vec3<i32>(global2.x, 2147483647i, -28484i), -vec3<i32>(u_input.b, -25330i, global2.x)), _wgslsmith_div_i32(~2147483647i, 44382i)), global2.x & -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, global2.x, 1i, 26804i), vec4<i32>(u_input.b, -24990i, global2.x, u_input.b)), vec4<i32>(9121i, 10832i, global2.x, 39935i)), _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-43425i, u_input.c.x, global2.x, -13034i), vec4<i32>(0i, 0i, -7473i, 33824i)) & ~vec4<i32>(global2.x, global2.x, -15951i, global2.x), vec4<i32>(-_wgslsmith_mod_i32(6672i, -2069i), u_input.b, -u_input.c.x | u_input.b, u_input.c.x)));
    global1 = func_2(vec2<bool>(false, false), _wgslsmith_f_op_f32(abs(-250f)));
    let var_0 = !(!select(vec3<bool>(false, global2.x >= 5710i, !arg_0), !(!vec3<bool>(global0[_wgslsmith_index_u32(38384u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(64596u, 20u)])), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(1u, u_input.a)), 20u)]));
    return 87168u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec2<u32>(8754u & _wgslsmith_div_u32(u_input.a, ~u_input.a), 1u);
    global1 = min(abs(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 64055u, global1.x), vec3<u32>(18848u, global1.x, u_input.a)), 583u)), _wgslsmith_div_vec2_u32(vec2<u32>(select(u_input.a, ~global1.x, global0[_wgslsmith_index_u32(1u, 20u)]), ~abs(0u)), _wgslsmith_mult_vec2_u32(abs(countOneBits(vec2<u32>(global1.x, 0u))), select(vec2<u32>(4294967295u, 11399u), vec2<u32>(1u, u_input.a), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 20u)])) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 3462u), vec2<u32>(u_input.a, 1u)))));
    global0 = array<bool, 20>();
    var var_0 = all(vec3<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~91308u, u_input.a), 20u)], global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(43992u, global1.x)), 20u)]));
    var var_1 = global1.x << (~global1.x % 32u);
    var var_2 = select(!vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 20u)], true, global0[_wgslsmith_index_u32(global1.x, 20u)])), false, true), !vec3<bool>(true, _wgslsmith_mult_u32(global1.x, 45698u) == 1u, all(vec2<bool>(false, false))), (~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, u_input.a, u_input.a), vec3<u32>(u_input.a, 23060u, u_input.a)) <= firstTrailingBit(func_1(true, Struct_4(948f, vec3<u32>(u_input.a, global1.x, u_input.a))))) | any(vec3<bool>(true | global0[_wgslsmith_index_u32(u_input.a, 20u)], !global0[_wgslsmith_index_u32(58184u, 20u)], global0[_wgslsmith_index_u32(~4294967295u, 20u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~(26044u >> (0u % 32u)));
}

