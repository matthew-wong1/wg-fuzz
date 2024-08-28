struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: vec3<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(~arg_0.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 27427i, -16674i, arg_1.c), vec4<i32>(11264i, -1i, arg_0.a.x, 10035i)), -2147483647i)), ~arg_1.c), 51916u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(215f, 1755f))))) - vec2<f32>(116f, -135f))));
    global1 = !select(!vec3<bool>(all(global1.xx), all(vec3<bool>(false, false, global1.x)), global1.x), select(select(vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x), true), !select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, false, true), true), !all(vec3<bool>(true, global1.x, true))), global1.x);
    var var_2 = arg_1;
    var_0 = Struct_1(select(arg_0.a, var_2.a.a, _wgslsmith_add_i32(-18212i, _wgslsmith_dot_vec4_i32(vec4<i32>(8425i, 7344i, 45917i, 2147483647i), vec4<i32>(arg_0.a.x, 2369i, var_2.c, -1i))) >= countOneBits(max(-1i, arg_0.a.x))), 26795u);
    return !global1.x || select(global1.x, global1.x, true);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = reverseBits(-2147483647i);
    global1 = vec3<bool>(false, arg_0, !func_3(Struct_1(~vec2<i32>(u_input.b, u_input.a), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(84422u, 19u)], 19u)]), Struct_2(Struct_1(arg_2, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)]), Struct_1(vec2<i32>(14914i, u_input.a), 0u), ~arg_2.x)));
    var var_1 = min(max(~(~(vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(125523u, 19u)]) >> (vec3<u32>(33384u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40416u, 19u)], 19u)], 0u) % vec3<u32>(32u)))), vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], _wgslsmith_mod_u32(51613u, 66687u), global0[_wgslsmith_index_u32(1u, 19u)]) ^ (~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64121u, 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 0u) | max(vec3<u32>(47312u, global0[_wgslsmith_index_u32(56340u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22056u, 19u)], 19u)]), vec3<u32>(46814u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], global0[_wgslsmith_index_u32(43739u, 19u)])))), firstLeadingBit((_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)], 25293u), vec3<u32>(global0[_wgslsmith_index_u32(7569u, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)])) | _wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30924u, 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(0u, 19u)]), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 19u)], 18339u))) ^ vec3<u32>(~10135u, abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)]), ~global0[_wgslsmith_index_u32(4294967295u, 19u)])));
    var var_2 = global1.zy;
    var_2 = vec2<bool>(select(global1.x, !(!(var_2.x || true)), true), false);
    return Struct_2(Struct_1(arg_2, 4294967295u), Struct_1(-vec2<i32>(-27077i, arg_2.x) | -_wgslsmith_clamp_vec2_i32(arg_2, arg_2, vec2<i32>(-15074i, 22763i)), ~28918u), u_input.b);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = global1.x == all(!(!(!vec2<bool>(global1.x, false))));
    global1 = vec3<bool>(true | func_3(Struct_1(~arg_2.a.a, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(74258u, 4294967295u, global0[_wgslsmith_index_u32(12014u, 19u)]), 19u)]), arg_1), var_0, !(!var_0));
    var var_1 = ~(~abs(vec4<u32>(1u, 1u, 1u, 1u)));
    var_1 = vec4<u32>(~(4294967295u | (global0[_wgslsmith_index_u32(var_1.x, 19u)] << (10954u % 32u))), abs(func_2(all(select(global1.yz, global1.xy, vec2<bool>(global1.x, false))), _wgslsmith_f_op_f32(trunc(-109f)), arg_2.a.a).b.b), arg_2.a.b, min(_wgslsmith_div_u32(~71074u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(5567u, 19u)], 76808u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.b.b, 19u)], 19u)]), max(var_1.zzw, vec3<u32>(arg_1.b.b, 1u, global0[_wgslsmith_index_u32(4294967295u, 19u)])))), arg_1.b.b));
    global1 = !(!(!(!(!vec3<bool>(global1.x, true, global1.x)))));
    return global1.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> StorageBuffer {
    global0 = array<u32, 19>();
    var var_0 = Struct_1(vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(-u_input.a, i32(-1i) * -2147483647i)), -_wgslsmith_sub_i32(-23788i, _wgslsmith_mod_i32(arg_0.a.x, arg_0.a.x))), 96563u);
    var var_1 = Struct_2(Struct_1(~(~var_0.a) << (~(vec2<u32>(arg_0.b, 37954u) ^ vec2<u32>(var_0.b, 85758u)) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(arg_0.b >> (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 48810u), vec2<u32>(global0[_wgslsmith_index_u32(13780u, 19u)], 59601u)), 1u) % 32u), 19u)]), arg_0, arg_1.x);
    var var_2 = u_input.b;
    let var_3 = vec3<bool>(true & all(select(!vec3<bool>(true, global1.x, global1.x), select(vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, false, global1.x)), true)), all(vec2<bool>(global1.x, arg_0.b > ~arg_0.b)), !func_4(~arg_1.x, func_2(true, -671f, var_1.b.a), Struct_2(Struct_1(var_0.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.b.b, 19u)], 19u)]), var_1.a, var_1.b.a.x)) & true);
    return StorageBuffer(max(0i, arg_0.a.x), select(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 4294967295u, 6670u), vec3<u32>(var_1.a.b, 47147u, 4294967295u)), ~14687u), var_0.b, _wgslsmith_f_op_f32(-212f - -570f) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1451f)), -815f))), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(0u, 19u)], _wgslsmith_sub_u32(arg_0.b, var_1.a.b))), ~vec4<u32>(~_wgslsmith_mod_u32(var_0.b, var_0.b), 46389u, ~1u, 98234u), select(firstTrailingBit(vec4<i32>(select(-10509i, -1i, var_3.x), arg_1.x, ~4402i, 20781i)), vec4<i32>(2147483647i, -select(var_0.a.x, arg_1.x, true), -15151i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-46739i, var_1.a.a.x, u_input.b, var_1.b.a.x), vec4<i32>(2147483647i, var_1.a.a.x, var_0.a.x, var_1.a.a.x)), vec4<i32>(0i, 2147483647i, var_0.a.x, arg_0.a.x))), !func_3(arg_0, Struct_2(Struct_1(var_1.a.a, 1u), var_1.b, arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(vec2<i32>(u_input.b | _wgslsmith_div_i32(-71349i, -2147483647i), u_input.b), 18012u), -vec3<i32>(-10436i, u_input.b, 10797i));
}

