struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, false, false, false, true, true, false, false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global0 = array<bool, 9>();
    let var_0 = abs(~vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(5571u, 27201u, 48438u))) | ~vec2<u32>(firstTrailingBit(27303u), 1u));
    global0 = array<bool, 9>();
    let var_1 = select(any(arg_0), true, any(vec2<bool>(_wgslsmith_f_op_f32(trunc(1475f)) != -1464f, any(arg_0))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(~(~vec3<u32>(51779u, var_0.x, 1u)), ~(~vec3<u32>(1u, 1u, var_0.x)))), Struct_1(~vec3<u32>(firstLeadingBit(var_0.x), 27666u, firstLeadingBit(1u))), Struct_1(~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(49723u, 7191u, 0u), vec3<u32>(1u, var_0.x, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 31018u), vec3<u32>(100403u, var_0.x, var_0.x)))), Struct_1(vec3<u32>(_wgslsmith_add_u32(var_0.x, 4376u) & _wgslsmith_dot_vec3_u32(vec3<u32>(16074u, 4294967295u, var_0.x), vec3<u32>(var_0.x, 55985u, var_0.x)), _wgslsmith_sub_u32(var_0.x, ~0u), ~1u)), Struct_1(select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(var_0.x, 13700u, var_0.x)) ^ (vec3<u32>(var_0.x, 4294967295u, var_0.x) & vec3<u32>(var_0.x, 41109u, 1u)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(var_0.x, var_0.x, 45548u), vec3<u32>(6078u, var_0.x, var_0.x)), select(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(1u, var_0.x, 4294967295u), global0[_wgslsmith_index_u32(1u, 9u)])), !global0[_wgslsmith_index_u32(58801u >> (var_0.x % 32u), 9u)])));
    return true;
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = Struct_2(Struct_1(countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(1704u, 60040u, 4294967295u), vec3<u32>(1u, 1u, 26222u)))), Struct_1(~_wgslsmith_sub_vec3_u32(select(vec3<u32>(21524u, 0u, 0u), vec3<u32>(4294967295u, 111409u, 40597u), global0[_wgslsmith_index_u32(73363u, 9u)]), vec3<u32>(1u, 1u, 1u))), Struct_1(countOneBits(~vec3<u32>(1u, 1u, 1u))), Struct_1(vec3<u32>(17068u, 65471u, abs(11274u << (1u % 32u)))), Struct_1(vec3<u32>(1u, 1u, 1u)));
    let var_1 = select(select(!vec2<bool>(any(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.d.a.x, 9u)], true)), global0[_wgslsmith_index_u32(var_0.a.a.x >> (38758u % 32u), 9u)]), vec2<bool>(!any(vec4<bool>(true, false, false, true)), any(select(vec2<bool>(false, global0[_wgslsmith_index_u32(97588u, 9u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.e.a.x, 9u)]), false))), vec2<bool>(func_3(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.d.a.x, 9u)], false, true, global0[_wgslsmith_index_u32(135588u, 9u)])), global0[_wgslsmith_index_u32(~(~59416u), 9u)])), select(select(!select(vec2<bool>(global0[_wgslsmith_index_u32(42579u, 9u)], true), vec2<bool>(global0[_wgslsmith_index_u32(50187u, 9u)], global0[_wgslsmith_index_u32(var_0.c.a.x, 9u)]), false), !(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.a.x, 9u)], global0[_wgslsmith_index_u32(15807u, 9u)])), false), vec2<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b.a.x, var_0.b.a.x), 9u)], any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], true, global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(25201u, 9u)]))), !(!global0[_wgslsmith_index_u32(var_0.e.a.x, 9u)]) | !all(vec4<bool>(global0[_wgslsmith_index_u32(var_0.d.a.x, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(var_0.c.a.x, 9u)], true))), select(vec2<bool>(true, var_0.d.a.x != (var_0.d.a.x >> (var_0.c.a.x % 32u))), select(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(44737u, 9u)]), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(6924u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)])), vec2<bool>(!global0[_wgslsmith_index_u32(var_0.d.a.x, 9u)], false), true), !select(vec2<bool>(global0[_wgslsmith_index_u32(23704u, 9u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.b.a.x, 9u)]), global0[_wgslsmith_index_u32(1u, 9u)])));
    var var_2 = var_0.b.a.x;
    let var_3 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-u_input.a, 2147483647i), u_input.a) << (4294967295u % 32u), u_input.b.x);
    let var_4 = Struct_3(vec2<u32>(firstTrailingBit((var_0.a.a.x | var_0.e.a.x) & var_0.e.a.x), 0u), false, var_0.d, var_0.b, 0i);
    return ~vec2<u32>(~(~(~var_4.c.a.x)), abs(~_wgslsmith_mult_u32(var_4.a.x, var_0.b.a.x)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> bool {
    var var_0 = ~(-u_input.b);
    var var_1 = any(!vec2<bool>(global0[_wgslsmith_index_u32(arg_2.x, 9u)], true));
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(~(vec2<u32>(30545u, arg_0) >> (vec2<u32>(72322u, arg_2.x) % vec2<u32>(32u))), ~func_2(-1872f)), func_2(-1733f).x, ~12838u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1715f, _wgslsmith_f_op_f32(min(-1000f, 454f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(719f - 591f) + _wgslsmith_f_op_f32(-133f - 1229f)))) - _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-476f, -691f)), _wgslsmith_f_op_f32(-656f - -873f))))) * _wgslsmith_f_op_f32(f32(-1f) * -950f));
    var_3 = _wgslsmith_f_op_f32(trunc(-2002f));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 9>();
    let var_0 = !(!vec3<bool>(false, true, func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(19925u, 4294967295u, 26423u), vec3<u32>(0u, 1u, 1u)), true, vec3<u32>(1u, 1u, 1u), all(vec2<bool>(global0[_wgslsmith_index_u32(23444u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)])))));
    var var_1 = reverseBits(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), vec3<i32>(u_input.a, -1i, 0i)) & reverseBits(28303i)), 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x & u_input.b.x, 1i, firstLeadingBit(u_input.b.x), 0i), vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.b.x), u_input.b.x, u_input.b.x, firstTrailingBit(u_input.b.x)))));
    let var_2 = Struct_1(~abs(~(~vec3<u32>(1u, 0u, 5875u))));
    var_1 = vec3<i32>(-1i) * -vec3<i32>(reverseBits(var_1.x), _wgslsmith_mult_i32(23848i, reverseBits(u_input.a)), 27554i);
    var var_3 = _wgslsmith_clamp_vec2_i32(-u_input.b, vec2<i32>(0i >> (_wgslsmith_div_u32(var_2.a.x >> (4294967295u % 32u), 12410u) % 32u), u_input.b.x), vec2<i32>(var_1.x, -countOneBits(u_input.a)));
    let var_4 = select(select(select(var_0, var_0, vec3<bool>(true, true, 27680u < var_2.a.x)), vec3<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(var_2.a.x, 9u)])), any(!var_0.zy), true), ~1i > (firstTrailingBit(var_3.x) & -12055i)), !select(var_0, select(var_0, select(var_0, var_0, false), any(var_0)), true), select(select(var_0, !select(vec3<bool>(global0[_wgslsmith_index_u32(39580u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], true), var_0, true), true), var_0, select(var_0, !vec3<bool>(true, global0[_wgslsmith_index_u32(var_2.a.x, 9u)], var_0.x), !var_0.x)));
    var_1 = -(vec3<i32>(-1i) * -vec3<i32>(var_3.x, var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(38861i, var_1.x, var_1.x), vec3<i32>(u_input.b.x, -49664i, 64402i))));
    global0 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -2021f))), vec2<u32>(max(var_2.a.x, _wgslsmith_sub_u32(~var_2.a.x, var_2.a.x)), ~_wgslsmith_mult_u32(52737u, ~var_2.a.x)), 1f, ~max(vec3<u32>(var_2.a.x | 1u, var_2.a.x, var_2.a.x), min(vec3<u32>(var_2.a.x, 133599u, 54315u), vec3<u32>(1u, var_2.a.x, var_2.a.x))), var_3.x);
}

