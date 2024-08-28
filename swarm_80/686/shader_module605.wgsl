struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: vec2<f32> = vec2<f32>(-825f, 2021f);

var<private> global2: array<Struct_1, 8>;

var<private> global3: vec4<f32> = vec4<f32>(-3062f, 549f, -939f, 213f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = ~((0u << (~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u)) ^ ~reverseBits(~38098u));
    let var_1 = vec3<i32>(_wgslsmith_div_i32(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(21138i, 15258i), vec2<i32>(u_input.c.x, u_input.c.x)), -u_input.c.x, ~u_input.c.x), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(12891i, u_input.c.x), select(vec2<i32>(64223i, 41950i), vec2<i32>(u_input.c.x, 0i), arg_3.a), u_input.c.zw), -vec2<i32>(u_input.c.x, 25614i) | _wgslsmith_mod_vec2_i32(u_input.c.wx, vec2<i32>(u_input.c.x, 14506i)))), ~reverseBits(select(u_input.c.x, -11307i, false)) << (u_input.a.x % 32u), -(-1i | u_input.c.x));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global0[_wgslsmith_index_u32(u_input.b, 1u)]) - 1159f), _wgslsmith_f_op_f32(sign(1f))))));
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, firstTrailingBit(u_input.b), ~u_input.b, ~4294967295u), countOneBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.b, 114067u) & vec4<u32>(u_input.b, u_input.b, 0u, 13897u))), 14166u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(3619u, u_input.b, 19509u, 134223u), vec4<u32>(0u, u_input.a.x, 556u, u_input.a.x)), ~vec4<u32>(46589u, u_input.b, u_input.a.x, u_input.a.x)), _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.a.x), u_input.b)), countOneBits(vec4<u32>(reverseBits(firstTrailingBit(u_input.b)), ~(35550u ^ u_input.b), 36830u, u_input.a.x)));
    var var_3 = 3981i;
    return 7654u;
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(arg_1, 8u)], Struct_1(true), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))));
    var var_1 = _wgslsmith_div_f32(1044f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(~36540u >> (func_3(Struct_2(Struct_1(true), var_0.a, true), vec2<f32>(global3.x, -1000f), global2[_wgslsmith_index_u32(u_input.b, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)]) % 32u)), 1u)], -172f));
    var var_2 = u_input.c.x;
    var_2 = _wgslsmith_mult_i32(arg_0, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(reverseBits(u_input.c), vec4<i32>(-32489i, -23621i, u_input.c.x, arg_0) ^ u_input.c), reverseBits(arg_0 | -2147483647i)) ^ _wgslsmith_dot_vec4_i32(u_input.c, -vec4<i32>(u_input.c.x, -2147483647i, 21305i, u_input.c.x)));
    var var_3 = abs(~vec4<u32>(firstTrailingBit(~arg_1), firstTrailingBit(arg_1), ~min(0u, u_input.b), 64473u));
    return global1.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = vec4<bool>(arg_0.x, !all(arg_0.zy), all(!(!arg_0.yzz)), all(vec2<bool>(true, (1i != u_input.c.x) | false)));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f))), 516f, any(!(!vec2<bool>(var_0.x, arg_0.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-u_input.c.x, 2752u))), 1530f), -738f, global0[_wgslsmith_index_u32(arg_1, 1u)]);
    let var_1 = abs(-2147483647i) >> ((_wgslsmith_add_u32(arg_1, ~0u) & 1u) % 32u);
    global2 = array<Struct_1, 8>();
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-903f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))) * global1.x), _wgslsmith_f_op_f32(f32(-1f) * -779f)));
    return 48772u >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, u_input.a.x), ~(~0u), _wgslsmith_mod_u32(~(1u >> (arg_1 % 32u)), 21536u)) % 32u);
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = (min(arg_1.x, ~_wgslsmith_add_u32(arg_1.x, 50068u)) < ~(~(71289u | u_input.b))) == !(~arg_1.x > 22470u);
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global3.xw, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(arg_1.x, 1u)], global3.x) + global3.yz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 1u)], 2022f)))), true)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global3.x, global0[_wgslsmith_index_u32(4294967295u, 1u)]), global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(687f, global1.x)) - _wgslsmith_f_op_f32(389f + 147f))))), global3.x == _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(4294967295u ^ arg_1.x), 1u)], global1.x)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1056f * global3.x), global0[_wgslsmith_index_u32(~0u, 1u)]), global3.xx, !select(vec2<bool>(arg_3.a, arg_0), vec2<bool>(true, arg_3.a), false)))));
    let var_1 = _wgslsmith_mult_i32(countOneBits(0i), 25649i);
    var_0 = select(arg_0, global1.x >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(i32(-1i) * -15727i, ~u_input.a.x)))), false);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(any(vec4<bool>(!any(vec4<bool>(false, true, true, false)), func_4(any(vec4<bool>(true, false, false, false)), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i), vec4<i32>(32658i, 22394i, u_input.c.x, 12534i)), global2[_wgslsmith_index_u32(func_1(vec4<bool>(true, false, false, false), u_input.b, global2[_wgslsmith_index_u32(39546u, 8u)]), 8u)]), any(vec2<bool>(true, false)), true)));
    var var_1 = (~(~u_input.c.x) ^ abs(firstTrailingBit(u_input.c.x))) ^ countOneBits(reverseBits(-u_input.c.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.xy - global3.yz)) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global3.x, -768f, var_0.a)), -433f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global1.x)))))));
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(firstLeadingBit(firstTrailingBit(u_input.a.yx)), _wgslsmith_div_vec2_u32(u_input.a.xx & u_input.a.xz, u_input.a.xy), min(~vec2<u32>(0u, u_input.a.x), u_input.a.xy)), vec2<u32>(u_input.b, 1u)), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, u_input.b);
}

