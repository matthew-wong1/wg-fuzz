struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, false, false, true, true, false, true, true, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> vec2<u32> {
    let var_0 = Struct_1(vec2<bool>(true, false && all(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 9u)], global0[_wgslsmith_index_u32(arg_0, 9u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 9u)], true, false, global0[_wgslsmith_index_u32(arg_0, 9u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(38602u, 9u)], global0[_wgslsmith_index_u32(arg_0, 9u)], global0[_wgslsmith_index_u32(arg_0, 9u)])))), vec2<u32>(1u, countOneBits(~(~65778u))), _wgslsmith_f_op_f32(max(-518f, arg_2)), _wgslsmith_f_op_vec2_f32(select(arg_1.yx, arg_1.zy, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 30382u, 37480u, 0u) >> (vec4<u32>(arg_0, arg_0, 0u, arg_0) % vec4<u32>(32u)), ~vec4<u32>(23024u, 0u, arg_0, 4294967295u)), 9u)])));
    var var_1 = vec2<bool>((~(~63307u) < arg_0) || true, !global0[_wgslsmith_index_u32(abs(~select(0u, var_0.b.x, true)), 9u)]);
    return vec2<u32>(firstTrailingBit(~(~_wgslsmith_div_u32(var_0.b.x, 48940u))), (~arg_0 >> (arg_0 % 32u)) & arg_0);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> vec2<u32> {
    global0 = array<bool, 9>();
    return _wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(func_3(arg_0.x, vec3<f32>(-1626f, 428f, -1158f), 112f), arg_0), vec2<u32>(~68006u, 1u))), firstTrailingBit(~_wgslsmith_div_vec2_u32(select(arg_0, arg_0, vec2<bool>(arg_1, arg_1)), vec2<u32>(arg_0.x, 24946u))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-760f, _wgslsmith_f_op_f32(ceil(-1530f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * -1971f)), select(false, all(!vec4<bool>(var_0.a.x, arg_0.a.x, false, true)), select(arg_0.a.x, true, all(var_0.a))) && ((_wgslsmith_f_op_f32(arg_0.d.x - 519f) != _wgslsmith_f_op_f32(-2186f + arg_0.c)) || false)));
    let var_2 = arg_0;
    var var_3 = !vec4<bool>(false, all(vec3<bool>(true, false, true)), true, true);
    let var_4 = min(arg_0.b.x, ~var_0.b.x >> (1u % 32u));
    return 1370f;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(false, !any(vec2<bool>(global0[_wgslsmith_index_u32(58113u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)]))), vec2<u32>(firstTrailingBit(0u), _wgslsmith_clamp_u32(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 47496u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4798u, 64704u, 71113u), vec3<u32>(36609u, 15074u, 0u)))), _wgslsmith_f_op_f32(func_4(Struct_1(vec2<bool>(false, true), func_2(~vec2<u32>(7070u, 0u), global0[_wgslsmith_index_u32(~10202u, 9u)]), -692f, vec2<f32>(_wgslsmith_f_op_f32(select(748f, -1750f, global0[_wgslsmith_index_u32(2437u, 9u)])), -1636f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(138f, -885f))))))));
    let var_1 = select(var_0.a, !(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 9u)], false)))), var_0.a.x);
    global0 = array<bool, 9>();
    let var_2 = select(select(select(select(vec4<bool>(true, var_0.a.x, true, true), vec4<bool>(false, var_1.x, var_0.a.x, true), all(vec3<bool>(var_1.x, false, false))), !(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 9u)], true)), true), vec4<bool>(all(!vec3<bool>(var_0.a.x, var_0.a.x, global0[_wgslsmith_index_u32(64555u, 9u)])), any(!vec2<bool>(true, var_1.x)), true, any(!vec4<bool>(global0[_wgslsmith_index_u32(78323u, 9u)], var_1.x, var_0.a.x, var_1.x))), select(!select(true, false, var_0.a.x), any(vec4<bool>(var_0.a.x, false, var_1.x, false)), global0[_wgslsmith_index_u32(1u, 9u)])), !vec4<bool>(true, true, any(select(var_0.a, vec2<bool>(true, true), var_0.a.x)), !var_0.a.x & all(vec4<bool>(false, true, true, var_0.a.x))), !vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(var_0.b.x, 9u)], !global0[_wgslsmith_index_u32(max(var_0.b.x, var_0.b.x), 9u)], true));
    let var_3 = reverseBits(var_0.b.x | _wgslsmith_sub_u32(abs(0u >> (var_0.b.x % 32u)), max(~var_0.b.x, _wgslsmith_mult_u32(0u, var_0.b.x))));
    return Struct_1(select(vec2<bool>(all(vec3<bool>(var_0.a.x, false, var_0.a.x)), ~u_input.a == _wgslsmith_mod_i32(-27979i, 9299i)), select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(any(var_2), all(vec3<bool>(true, var_0.a.x, false))), false), select(select(var_0.a, vec2<bool>(var_2.x, false), !vec2<bool>(var_2.x, var_2.x)), vec2<bool>(var_2.x, false), true)), var_0.b, var_0.d.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(635f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2025f)) + var_0.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(floor(var_0.d.x)))), var_2.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = 208u;
    global0 = array<bool, 9>();
    var var_1 = true;
    var_0 = ~arg_1.b.x;
    var var_2 = 48038u;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(i32(-1i) * -func_5(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], true), vec2<u32>(12872u, 48097u), 1000f, vec2<f32>(-798f, -1626f)), func_1()), -2147483647i);
    let var_1 = select(vec4<u32>(1u, ~21834u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(~3667u, 1u), vec2<u32>(1u, ~113974u))), _wgslsmith_mult_vec4_u32(~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(75278u, 4294967295u, 14929u, 79464u), vec4<u32>(4294967295u, 4294967295u, 0u, 38742u), vec4<u32>(0u, 18541u, 1u, 53686u))), vec4<u32>(~select(18008u, 4294967295u, global0[_wgslsmith_index_u32(113604u, 9u)]), _wgslsmith_add_u32(~4294967295u, reverseBits(4294967295u)), select(~51109u, ~19664u, !global0[_wgslsmith_index_u32(43582u, 9u)]), 1u)), global0[_wgslsmith_index_u32(~1u, 9u)]);
    let var_2 = Struct_1(select(!select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(20694u, 9u)], false), any(vec2<bool>(true, true))), func_1().a, all(select(!vec3<bool>(global0[_wgslsmith_index_u32(6278u, 9u)], false, true), vec3<bool>(true, false, false), false))), ~vec2<u32>(max(~var_1.x, 1u), var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -941f), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-339f, -393f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-786f, 1490f))) + vec2<f32>(1f, 1f))))));
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 16403u, 1u, var_2.b.x), ~var_1), ~58602u), abs(~(~4294967295u))), var_2.b.x);
    let var_4 = _wgslsmith_div_i32(u_input.a, countOneBits(var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(var_2.b.x, var_1.x), _wgslsmith_div_vec2_i32(var_0, vec2<i32>(~func_5(var_2, var_2), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-12654i, var_0.x, -7652i), vec3<i32>(1i, var_0.x, u_input.a))))), _wgslsmith_div_vec2_i32(var_0, abs(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(var_0, vec2<i32>(-468i, 58560i)), firstLeadingBit(vec2<i32>(var_0.x, var_4))))), var_1.ywx);
}

