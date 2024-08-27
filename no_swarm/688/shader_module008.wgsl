struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = (~min(-18088i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.e, global2.d, 1i), vec3<i32>(0i, -74333i, 52229i))) >> (~_wgslsmith_mult_u32(57712u, select(20233u, global2.a, global2.c.x)) % 32u)) ^ -min(min(775i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b.x, 30322i), global2.b.wy)), 12393i);
    var var_1 = ~0u;
    global3 = Struct_1(reverseBits(global3.a), vec4<i32>(u_input.a, global2.e, global3.e, firstLeadingBit(48431i)) << (arg_0 % vec4<u32>(32u)), select(vec2<bool>(false, all(vec3<bool>(false, global3.c.x, global2.c.x))), !global2.c, false), global2.d, max(-24387i & global3.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.e, global2.b.x, -50340i), vec3<i32>(18584i, -1i, 1i))) & firstLeadingBit(firstTrailingBit(var_0)));
    var_1 = ~(global2.a & abs(global3.a));
    global3 = Struct_1(4294967295u, select(reverseBits(global3.b) ^ ~vec4<i32>(42662i, -1i, global2.e, 15738i), _wgslsmith_div_vec4_i32(firstLeadingBit(global3.b), global2.b), vec4<bool>(global2.c.x, all(vec2<bool>(true, true)), true, any(global2.c))), select(!global3.c, vec2<bool>(global3.c.x, !(global2.c.x | global3.c.x)), global3.c), _wgslsmith_add_i32(firstLeadingBit(global2.b.x), abs((-55737i << (global0.x % 32u)) | max(1i, global3.e))), var_0);
    return global3.e;
}

fn func_2() -> vec3<u32> {
    global3 = Struct_1(_wgslsmith_sub_u32(global3.a, _wgslsmith_sub_u32(global2.a, global2.a)), select(-global2.b, ~global2.b, !select(!vec4<bool>(global3.c.x, false, false, global2.c.x), select(vec4<bool>(false, false, true, global2.c.x), vec4<bool>(true, false, true, false), global2.c.x), true)), !vec2<bool>(_wgslsmith_f_op_f32(select(212f, -545f, true)) > _wgslsmith_f_op_f32(trunc(-1144f)), true), func_3(_wgslsmith_sub_vec4_u32(countOneBits(countOneBits(vec4<u32>(1205u, 4294967295u, global3.a, global2.a))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global2.a, 1u, global0.x), vec4<u32>(0u, 34719u, 0u, global2.a)), vec4<u32>(4294967295u, 1u, global3.a, 4294967295u)))), 2147483647i & _wgslsmith_clamp_i32(~(global3.d ^ global3.e), _wgslsmith_mult_i32(select(-3574i, 0i, false), -32689i), i32(-1i) * -20759i));
    global0 = ~(~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.a, 3550u, global0.x), vec3<u32>(global3.a, global3.a, global2.a)), ~vec3<u32>(global3.a, global3.a, 4294967295u)) ^ max(vec3<u32>(4294967295u >> (global3.a % 32u), 4294967295u, 4294967295u), ~max(vec3<u32>(global3.a, global0.x, 1u), vec3<u32>(global2.a, 1u, 0u))));
    let var_0 = Struct_1(global0.x, global2.b, select(vec2<bool>(true, global3.c.x), vec2<bool>(global2.c.x, global3.c.x), !(!any(vec3<bool>(global3.c.x, false, false)))), i32(-1i) * -_wgslsmith_mod_i32(u_input.a, 1i), 0i);
    return ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(29151u, 4294967295u, var_0.a), min(vec3<u32>(var_0.a, var_0.a, 4294967295u), vec3<u32>(global2.a, var_0.a, 0u))), select(select(vec3<u32>(global0.x, 54903u, 31457u), vec3<u32>(var_0.a, global3.a, 4294967295u), vec3<bool>(false, var_0.c.x, false)), vec3<u32>(var_0.a, global0.x, 4341u), vec3<bool>(false, true, global2.c.x))), ~(countOneBits(vec3<u32>(var_0.a, 17460u, global0.x)) | vec3<u32>(var_0.a, 1u, 4294967295u)));
}

fn func_1() -> Struct_1 {
    global1 = ~(~global0.x);
    let var_0 = global2.b;
    global0 = firstLeadingBit(~firstLeadingBit(func_2()));
    var var_1 = Struct_1(~((global3.a | 82277u) ^ _wgslsmith_mod_u32(4048u, 35295u)) ^ _wgslsmith_dot_vec4_u32(min(~vec4<u32>(global0.x, 75276u, 41839u, global3.a), ~vec4<u32>(global3.a, global3.a, global0.x, global2.a)), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(12916u, global2.a, global3.a, 1u), vec4<u32>(global3.a, 4294967295u, global2.a, global3.a)))), countOneBits(countOneBits(vec4<i32>(-var_0.x, global3.b.x, 0i, 1i))), vec2<bool>(select(any(select(global3.c, global3.c, false)), global3.c.x, global2.c.x), true), -48827i, i32(-1i) * -(func_3(vec4<u32>(global2.a, global3.a, 0u, 30107u)) << (~0u % 32u)));
    return Struct_1(global3.a, -global2.b >> (select(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.a, global3.a, 4294967295u, 1u), vec4<u32>(global3.a, global0.x, 66733u, global0.x) >> (vec4<u32>(38998u, 0u, global0.x, 10474u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(61441u, 4294967295u, 4294967295u, global3.a), vec4<u32>(0u, global2.a, 4294967295u, 4294967295u)), vec4<u32>(2881u, 1u, global0.x, global3.a) << (vec4<u32>(global3.a, 40553u, 29784u, 6234u) % vec4<u32>(32u))), !global3.c.x) % vec4<u32>(32u)), select(vec2<bool>(!(!global2.c.x), global3.c.x), select(select(vec2<bool>(true, false), !vec2<bool>(true, global3.c.x), true), select(global3.c, vec2<bool>(true, true), !var_1.c.x), true & (12851i < var_1.e)), global3.c), select(u_input.a, ~_wgslsmith_clamp_i32(-4626i, countOneBits(22615i), -1i), global3.c.x), 0i);
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    global3 = arg_0;
    var var_0 = Struct_1(arg_0.a, vec4<i32>(~func_3(vec4<u32>(arg_0.a, global0.x, 7513u, global3.a)), (_wgslsmith_dot_vec2_i32(vec2<i32>(global2.e, 0i), global3.b.zy) | 0i) & 51903i, global2.e, max(firstLeadingBit(_wgslsmith_mult_i32(arg_0.e, global2.e)), i32(-1i) * -39683i)), select(select(!vec2<bool>(global3.c.x, false), arg_0.c, global2.c.x), arg_0.c, global3.c), ~arg_0.b.x, -abs(-_wgslsmith_div_i32(-2147483647i, -50886i)));
    let var_1 = arg_0;
    global0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~global0.x, global2.a, 1548u), _wgslsmith_clamp_vec3_u32(firstTrailingBit(~reverseBits(vec3<u32>(4294967295u, global2.a, global2.a))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 11414u, 0u), vec3<u32>(var_0.a, 1u, 28347u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.a, var_0.a, var_1.a), vec3<u32>(var_0.a, 1u, global0.x))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(40048u, 38116u, 4294967295u), vec3<u32>(arg_0.a, 6771u, arg_0.a))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global2.a, global3.a, 0u), vec3<u32>(4294967295u, 1u, global2.a)))));
    var var_2 = 40443i;
    return select(select(vec3<bool>(!(var_0.c.x && var_0.c.x), !(!arg_0.c.x), true), !vec3<bool>(var_1.c.x, global3.c.x, all(global3.c)), !select(!vec3<bool>(true, global3.c.x, var_0.c.x), !vec3<bool>(false, var_0.c.x, var_1.c.x), true)), vec3<bool>(!select(all(global2.c), false, var_0.c.x), select(!(!var_1.c.x), global3.c.x, var_0.c.x), false), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global3.b.wx;
    global3 = Struct_1(global0.x, select(global3.b, min(-_wgslsmith_mod_vec4_i32(vec4<i32>(global3.e, var_0.x, global3.e, u_input.a), vec4<i32>(global3.e, global2.e, -1i, -9192i)), global2.b), true), select(select(vec2<bool>(true, global3.c.x), select(select(global2.c, global2.c, false), select(vec2<bool>(false, false), vec2<bool>(false, global2.c.x), global3.c.x), true), true), !(!vec2<bool>(global3.c.x, true)), all(func_4(func_1()))), global2.d << (global0.x % 32u), 42827i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f) - -589f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-411f, -469f)) * 2945f)));
    global2 = func_1();
    global3 = Struct_1(~4294967295u, ~min(countOneBits(abs(vec4<i32>(global3.b.x, global3.b.x, global3.d, 17317i))), global2.b), !vec2<bool>(true, global3.c.x), -1i, ~firstTrailingBit(u_input.c));
    global3 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>((global2.a << (global3.a % 32u)) & global2.a, 13698u, ~0u, ~(~global2.a)), vec4<u32>(firstTrailingBit(4294967295u), global3.a << (22434u % 32u), 4294967295u, ~max(1u, 1u))), global3.b, global2.c, 2147483647i, global3.b.x ^ global3.e);
    let var_2 = func_1();
    global0 = reverseBits(~vec3<u32>(_wgslsmith_clamp_u32(1u, var_2.a, var_2.a), firstLeadingBit(firstLeadingBit(1u)), 7209u));
    let x = u_input.a;
    s_output = StorageBuffer(27132u, ~vec4<u32>(~global3.a >> (_wgslsmith_clamp_u32(global0.x, global0.x, 4294967295u) % 32u), global2.a, reverseBits(~4294967295u), firstLeadingBit(reverseBits(global3.a))));
}

