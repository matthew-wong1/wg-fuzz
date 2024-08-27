struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    let var_0 = true && all(!vec4<bool>(any(vec2<bool>(false, true)), true, true, all(vec4<bool>(true, false, true, false))));
    let var_1 = u_input.e;
    let var_2 = 1u;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(319f - _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.d, 30u)], -713f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 30u)]), -683f, var_0)))), -249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2, 30u)]))) * -1000f));
    let var_4 = -vec4<i32>(_wgslsmith_sub_i32(19714i, ~var_1), var_1, ~(1i & -u_input.e), _wgslsmith_clamp_i32(firstTrailingBit(var_1), var_1, ~27832i));
    return var_2;
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_div_vec4_u32(u_input.b, u_input.b) & u_input.b), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-479f, -1000f, global0[_wgslsmith_index_u32(u_input.d, 30u)], 211f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(0u, 30u)], 239f, 1357f, -385f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a.x, 30u)]))))), u_input.c.x, vec3<i32>(u_input.e, u_input.e, -30038i));
    global0 = array<f32, 30>();
    var var_1 = !all(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, true)));
    var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.b.x, 99181u, 4294967295u, 50994u)), vec4<u32>(_wgslsmith_sub_u32(13896u, u_input.a.x), reverseBits(1u), 1u, firstLeadingBit(var_0.a.a.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(985f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(33572u, 30u)]), _wgslsmith_f_op_f32(trunc(var_0.a.b.x)), var_0.a.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], -1180f, -210f, -1515f) + var_0.a.b), all(vec2<bool>(false, true)))), -1000f), ~(countOneBits(u_input.b.x) | (~var_0.a.a.x >> (~45120u % 32u))), vec3<i32>(u_input.e, 1i, -(var_0.c.x | u_input.e)));
    var var_2 = select(vec3<bool>(true, false, -303f > _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u >> (var_0.a.a.x % 32u), 30u)])), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, var_0.a.c > var_0.a.b.x)), select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, false, true, true)), any(vec2<bool>(false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false))), vec3<bool>(true, !all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), !(min(-51237i, var_0.c.x) >= max(u_input.e, 0i))));
    return var_0.a.a.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: u32, arg_3: u32) -> i32 {
    var var_0 = arg_0;
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(arg_1.x, u_input.b.x, arg_1.x, 7386u)) >> (u_input.b % vec4<u32>(32u)), abs(~u_input.b)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.x, 30u)] * global0[_wgslsmith_index_u32(arg_2, 30u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 30u)] * global0[_wgslsmith_index_u32(arg_3, 30u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 30u)] + 1000f), -408f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1228f, -481f, -728f, global0[_wgslsmith_index_u32(1u, 30u)]) + vec4<f32>(global0[_wgslsmith_index_u32(71932u, 30u)], 178f, global0[_wgslsmith_index_u32(arg_1.x, 30u)], global0[_wgslsmith_index_u32(arg_1.x, 30u)]))))), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~var_0.x, ~arg_1.x), 30u)]), ~var_0.x >> (arg_2 % 32u), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, 0i, 2147483647i) ^ vec3<i32>(u_input.e, u_input.e, u_input.e), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, -2147483647i, u_input.e), vec3<i32>(81375i, -2147483647i, u_input.e))) & abs(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(u_input.e, 3352i, u_input.e), vec3<i32>(u_input.e, -23214i, u_input.e)), vec3<i32>(u_input.e, 13189i, 0i), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))));
    var var_2 = true;
    var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~max(4294967295u, var_1.a.a.x), 0u), _wgslsmith_div_u32(~1u, _wgslsmith_sub_u32(~arg_1.x, 3471u)), max(1u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, var_1.b), vec3<u32>(var_0.x, arg_2, 4294967295u)), _wgslsmith_dot_vec2_u32(u_input.c, arg_0.zz), func_3()) | ~var_1.a.a.yzw, var_1.a.a.zxx >> (var_1.a.a.ywz % vec3<u32>(32u))));
    global0 = array<f32, 30>();
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 30>();
    var var_0 = _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~38645u, 30u)]));
    let var_1 = min(vec3<u32>(~func_1(), reverseBits(1u), u_input.a.x), (countOneBits(firstLeadingBit(vec3<u32>(1u, 76381u, u_input.b.x))) >> (u_input.b.yzx % vec3<u32>(32u))) & u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, ~54113u, _wgslsmith_sub_i32(abs(-1250i), func_2(u_input.a >> (_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(var_1.x, var_1.x, var_1.x)) % vec3<u32>(32u)), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(22932u, 71280u)), u_input.b.wz), u_input.b.x, u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 30u)], global0[_wgslsmith_index_u32(14033u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)])))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 30u)], global0[_wgslsmith_index_u32(u_input.a.x, 30u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 30u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 30u)])))), select(~vec4<u32>(_wgslsmith_add_u32(var_1.x, var_1.x), u_input.d, _wgslsmith_mult_u32(var_1.x, var_1.x), var_1.x | 35108u), u_input.b, vec4<bool>(any(vec3<bool>(false, false, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), !(u_input.e == u_input.e), all(vec4<bool>(false, true, true, false)))));
}

