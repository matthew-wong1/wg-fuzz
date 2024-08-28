struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(1u, 0u, 11728u, 39712u, 77773u, 826u, 1u, 1u, 1u, 1u, 31797u, 38026u, 0u, 30004u, 1u, 4294967295u, 3035u, 59100u, 4054u, 0u, 32677u, 31414u, 4294967295u, 0u);

var<private> global1: array<vec3<i32>, 22>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_2(~select(abs(vec4<u32>(92207u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 4294967295u, u_input.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 24u)], u_input.a.x, 78055u, 4294967295u), ~vec4<u32>(6976u, u_input.a.x, 4294967295u, 9793u)), false), global2.x, Struct_1(-_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 0i), vec2<i32>(u_input.b, 48695i)), ~(~(~vec2<u32>(57992u, 5921u))), -19396i << (u_input.a.x % 32u), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.b, -1i, u_input.c, u_input.b)), vec4<i32>(u_input.c, 2147483647i, -1i, 1i)), vec4<i32>(-u_input.c, 2147483647i, 49081i, -1i))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-612f, -1000f, -2067f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2626f, -492f, 1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 305f, 2230f) - vec3<f32>(-1000f, 232f, -756f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-641f, 404f, -353f))) * vec3<f32>(1037f, -1102f, -642f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1152f, 811f, -1425f), vec3<f32>(835f, 1706f, 798f))) + vec3<f32>(1f, 1f, 1f)) + vec3<f32>(_wgslsmith_f_op_f32(round(1560f)), -352f, _wgslsmith_f_op_f32(231f - -405f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -522f), 833f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2688f * 674f) + -107f))));
    let var_2 = Struct_2(~(_wgslsmith_add_vec4_u32(~var_0.a, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a.x, u_input.a.x, 0u)) << (~vec4<u32>(87302u, 2714u, 61457u, 4294967295u) % vec4<u32>(32u))), false, Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(var_0.c.d, vec4<i32>(u_input.b, u_input.b, 1i, u_input.b)), ~(-var_0.c.a)), ~abs(~vec2<u32>(1u, var_0.c.b.x)), u_input.c, var_0.c.d));
    let var_3 = select(!select(!vec4<bool>(true, global2.x, false, var_0.b), !vec4<bool>(var_0.b, var_2.b, false, false), true), !(!vec4<bool>(true, true, !global2.x, var_2.b)), var_2.b);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-2074f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -353f) - -511f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1187f)), 1000f)), var_1.x)));
    return vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, ~var_0.a.x), min(_wgslsmith_dot_vec2_u32(var_0.c.b, u_input.a.xx), ~firstLeadingBit(var_2.c.b.x))), var_0.c.b.x, 3062u, 49486u);
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_sub_vec4_u32(func_3(), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(18484u, global0[_wgslsmith_index_u32(1u, 24u)], u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec4<u32>(1u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)], 24u)], 27597u)) & abs(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 78888u, 1u, u_input.a.x)), func_3()) << (firstTrailingBit(vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 24u)] & 4294967295u, 4294967295u)) % vec4<u32>(32u)));
    global1 = array<vec3<i32>, 22>();
    global1 = array<vec3<i32>, 22>();
    global2 = vec4<bool>(reverseBits(1u) < _wgslsmith_mult_u32(4294967295u, u_input.a.x), false, !all(global2.xx), !global2.x);
    let var_1 = Struct_1(arg_0, var_0.wz << (~vec2<u32>(global0[_wgslsmith_index_u32(~u_input.a.x, 24u)], 0u) % vec2<u32>(32u)), -2147483647i, _wgslsmith_mult_vec4_i32(-vec4<i32>(~1i, u_input.b, max(u_input.c, 2147483647i), ~(-2147483647i)), -vec4<i32>(-12701i, u_input.b, arg_0, 1i) ^ ((vec4<i32>(-38756i, 17681i, 1i, -4677i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))) ^ vec4<i32>(arg_0, 0i, u_input.c, u_input.c))));
    return vec2<bool>(true, false);
}

fn func_1() -> vec2<u32> {
    var var_0 = !any(global2.wwy);
    global1 = array<vec3<i32>, 22>();
    global2 = vec4<bool>(!any(select(!global2.yw, func_2(8892i), !global2.yy)), global2.x, false, func_2(~(-u_input.b << (firstLeadingBit(4294967295u) % 32u))).x);
    return u_input.a.yy;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = false;
    global0 = array<u32, 24>();
    var var_1 = Struct_2(_wgslsmith_div_vec4_u32(~vec4<u32>(37429u, firstLeadingBit(arg_2.b.x), global0[_wgslsmith_index_u32(1u, 24u)], firstTrailingBit(7049u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1, 4294967295u, 1u, arg_1), ~firstTrailingBit(vec4<u32>(arg_0, 1u, 13615u, 440u)))), select(var_0, true, var_0), arg_2);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_div_f32(1536f, _wgslsmith_f_op_f32(abs(1f))), func_2(max(5978i, 1i) ^ arg_2.d.x).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1640f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -873f) + _wgslsmith_f_op_f32(ceil(389f))))))));
    let var_3 = _wgslsmith_sub_i32(2147483647i, arg_2.a);
    return Struct_1(u_input.b, ~(~u_input.a.zy), -6676i, ~_wgslsmith_add_vec4_i32(arg_2.d, -(~vec4<i32>(0i, -19274i, arg_2.a, arg_2.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_add_u32(~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(38503u), u_input.a.x), vec2<u32>(2036u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64954u, 24u)], 24u)], 24u)], 24u)], u_input.a.x), vec2<u32>(51765u, 1u))))), _wgslsmith_add_u32(select(~(79711u & global0[_wgslsmith_index_u32(0u, 24u)]), 1u, true), 18027u), Struct_1(-1i, func_1(), -8963i & countOneBits(u_input.c << (46778u % 32u)), vec4<i32>(u_input.b, ~max(u_input.c, 2147483647i), abs(u_input.b), u_input.b)));
    var var_1 = Struct_1(_wgslsmith_mult_i32(u_input.c, u_input.b), vec2<u32>(firstLeadingBit(_wgslsmith_add_u32(u_input.a.x >> (4294967295u % 32u), 21228u)), ~global0[_wgslsmith_index_u32(1u, 24u)]), max(var_0.d.x, 105175i), vec4<i32>(~(-33656i), max(0i, -1i), -2147483647i, var_0.a));
    let var_2 = _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(var_1.a, (i32(-1i) * -2147483647i) << (global0[_wgslsmith_index_u32(1u, 24u)] % 32u))), var_0.d.yz);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 129f)))))));
}

