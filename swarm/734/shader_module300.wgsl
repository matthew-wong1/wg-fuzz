struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: u32;

var<private> global2: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(-176f, -814f), vec2<f32>(1728f, -1551f), vec2<f32>(1110f, -665f), vec2<f32>(322f, -2346f), vec2<f32>(543f, 745f), vec2<f32>(131f, 1744f), vec2<f32>(193f, -1502f), vec2<f32>(372f, -689f), vec2<f32>(943f, 389f), vec2<f32>(581f, 987f), vec2<f32>(-179f, 468f), vec2<f32>(-697f, -1519f), vec2<f32>(-682f, 1202f), vec2<f32>(438f, -1348f), vec2<f32>(-249f, -397f), vec2<f32>(1246f, -1016f), vec2<f32>(-356f, 632f), vec2<f32>(817f, 1239f), vec2<f32>(-900f, 880f), vec2<f32>(-419f, 1093f), vec2<f32>(-344f, 1481f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = ~(-3671i);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-988f, _wgslsmith_f_op_f32(round(-131f)))) - _wgslsmith_f_op_vec2_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.e, vec4<u32>(u_input.c, u_input.e.x, u_input.a, u_input.c)), 21u)])))));
    let var_2 = vec2<i32>(-2147483647i, _wgslsmith_mult_i32(3567i, _wgslsmith_sub_i32(select(0i, var_0, any(global0.zw)), _wgslsmith_sub_i32(2147483647i, 28532i))));
    global0 = vec4<bool>(true, any(select(select(vec4<bool>(true, true, false, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, true, true)), vec4<bool>(true, true, false, !global0.x), any(select(vec3<bool>(global0.x, true, global0.x), global0.xxw, global0.x)))), true && !global0.x, global0.x);
    var var_3 = !select(global0.yx, select(select(vec2<bool>(global0.x, false), vec2<bool>(false, global0.x), !vec2<bool>(global0.x, global0.x)), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), true), !global0.xz, true), !vec2<bool>(global0.x, false)), !global0.x);
    return var_1.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> Struct_4 {
    var var_0 = -627f;
    global1 = 10344u;
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -321f), 1f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    global0 = !select(!vec4<bool>(true, global0.x, false, all(vec2<bool>(arg_1, arg_1))), vec4<bool>(true, !(var_1.a.x < var_1.a.x), true == all(vec3<bool>(global0.x, false, global0.x)), arg_1), false);
    global1 = 10861u;
    return Struct_4(arg_0, var_1.a.yw, Struct_2(var_1.a.x, Struct_1(var_1.a)));
}

fn func_1() -> vec4<bool> {
    var var_0 = func_2(_wgslsmith_add_vec2_u32(u_input.e.ww, _wgslsmith_add_vec2_u32(~(~u_input.e.zz), ~u_input.e.xx & _wgslsmith_sub_vec2_u32(u_input.e.yw, u_input.e.zz))), global0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(var_0.c.b.a.xzx + vec3<f32>(_wgslsmith_div_f32(-762f, 694f), -110f, var_0.b.x));
    global2 = array<vec2<f32>, 21>();
    var var_2 = Struct_3(func_2(reverseBits(_wgslsmith_mult_vec2_u32(var_0.a, ~u_input.e.yy)), true).c.b, any(vec2<bool>(true, global0.x)) & (61350u < var_0.a.x));
    let var_3 = Struct_4(max(var_0.a, firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(var_0.a.x, var_0.a.x, var_0.a.x), u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), var_2.a.a.x), func_2(~var_0.a, false).c);
    return !(!(!vec4<bool>(var_2.b, var_2.b && false, select(true, global0.x, var_2.b), false)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(1f));
    global1 = abs(_wgslsmith_add_u32(arg_2, ~arg_2));
    var var_1 = global0.x;
    var var_2 = func_2(~u_input.e.zy << (~(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(1u, arg_2))) % vec2<u32>(32u)), true);
    var var_3 = func_2(vec2<u32>(_wgslsmith_add_u32(u_input.e.x, ~0u), _wgslsmith_sub_u32(var_2.a.x, _wgslsmith_mod_u32(~var_2.a.x, u_input.e.x))), all(vec2<bool>(true, true | (true || arg_0.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_3.b.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * var_2.b.x), _wgslsmith_f_op_f32(abs(var_0))))), _wgslsmith_f_op_f32(f32(-1f) * -1008f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(var_3.c.b.a.x))))))), var_3.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(abs(~(abs(u_input.a) >> (_wgslsmith_clamp_u32(u_input.c, 0u, u_input.e.x) % 32u))), 40994u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(!(!func_1()), func_1().xy, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, 85855u), 4294967295u & abs(u_input.a)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(656f, _wgslsmith_f_op_f32(759f + -487f))), _wgslsmith_f_op_f32(-739f - _wgslsmith_f_op_f32(select(-651f, 662f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1511f))), _wgslsmith_f_op_f32(min(1f, 881f)), _wgslsmith_f_op_f32(exp2(func_2(countOneBits(u_input.e.xz), false).b.x))));
    var var_2 = func_2(u_input.e.xy, false).c;
    let var_3 = Struct_4(~(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.e.zw, vec2<u32>(u_input.c, 26220u)), u_input.c << (u_input.e.x % 32u))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1303f)), func_2(func_2(_wgslsmith_sub_vec2_u32(~u_input.e.yz, vec2<u32>(4294967295u, var_0)), any(vec3<bool>(global0.x, global0.x, global0.x))).a, !any(vec2<bool>(global0.x, true))).c);
    var var_4 = select(~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.d, u_input.b, u_input.b, u_input.b), countOneBits(vec4<i32>(4365i, u_input.b, 25258i, u_input.b))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(30089i, u_input.b, u_input.b, u_input.d), vec4<i32>(0i, u_input.d, u_input.b, 2147483647i), vec4<i32>(8498i, 45623i, 1i, u_input.d)), -vec4<i32>(-2147483647i, u_input.d, u_input.b, 41068i), true)), min(_wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)), vec4<i32>(u_input.b << (u_input.c % 32u), reverseBits(u_input.b), u_input.b | u_input.b, ~31463i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -40532i, ~(-9342i), _wgslsmith_sub_i32(-5692i, u_input.b)), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.b, u_input.b, 1i, 2147483647i)), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.b) | vec4<i32>(u_input.d, -39875i, u_input.d, u_input.d)))), true);
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -634f))), min(reverseBits(u_input.e), _wgslsmith_div_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c, 4294967295u, var_3.a.x), vec4<u32>(1u, var_3.a.x, u_input.a, 45723u)), vec4<u32>(var_3.a.x, 4294967295u, 302u, u_input.c)), ~abs(u_input.e))), 1083f);
}

