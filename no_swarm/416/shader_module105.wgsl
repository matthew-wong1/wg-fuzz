struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(2147483647i, -70096i, 2147483647i, 757i), vec4<i32>(2147483647i, 0i, 13879i, 26111i), vec4<i32>(0i, 1i, 1i, -1i), vec4<i32>(0i, -1i, 2147483647i, 0i), vec4<i32>(18926i, -62308i, -2656i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -59188i), vec4<i32>(12551i, 41232i, 1i, 2147483647i), vec4<i32>(2147483647i, -1i, 23637i, 9407i), vec4<i32>(-32935i, -1i, -9426i, i32(-2147483648)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = !any(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), !any(vec4<bool>(true, true, true, false))));
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(5007i, -1i)), max(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.a, 17642i))), 25925i, _wgslsmith_div_i32(u_input.a, abs(u_input.b)), -15718i) | vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -52418i), vec2<i32>(-50719i, -2147483647i)), reverseBits(u_input.b | 6685i), _wgslsmith_sub_i32(-u_input.a, -68145i & u_input.b), _wgslsmith_mod_i32(-2147483647i, 2147483647i) & (u_input.b ^ u_input.a)), global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c.wy), firstTrailingBit(~vec2<u32>(u_input.c.x, u_input.c.x))), 1u), 9u)]);
    global0 = array<vec4<i32>, 9>();
    var var_2 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, false), any(vec3<bool>(false, all(vec3<bool>(true, true, true)), true)));
    global0 = array<vec4<i32>, 9>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-890f, -370f)))) + 1154f);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + -1141f)))), !all(!(!vec4<bool>(arg_1.b, false, false, arg_0.b))), vec2<u32>(1u, 1u));
    global0 = array<vec4<i32>, 9>();
    global0 = array<vec4<i32>, 9>();
    let var_1 = reverseBits(4294967295u);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))), all(select(vec3<bool>(true, arg_1.b, true), vec3<bool>(arg_1.b, var_0.b, arg_1.b), true)))) * arg_1.a), var_0.b, ~_wgslsmith_add_vec2_u32(~(~var_0.c), ~vec2<u32>(var_1, u_input.c.x)));
    return _wgslsmith_f_op_f32(-arg_0.a);
}

fn func_1() -> bool {
    global0 = array<vec4<i32>, 9>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(157f, 2008f, 595f, -1633f), vec4<f32>(1282f, -886f, -508f, 236f))) - vec4<f32>(-348f, _wgslsmith_f_op_f32(func_2(Struct_3(1228f, false, u_input.c.ww), Struct_3(-1596f, false, vec2<u32>(11806u, 9067u)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(565f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(581f + -355f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f))))));
    let var_1 = select(!select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false)), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.c.x != 9719u, all(vec4<bool>(false, false, false, false)), true, u_input.a == u_input.b), vec4<bool>(true, true, true, true)), vec4<bool>(false, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), !all(vec3<bool>(false, true, true)), true), select(vec4<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), true, false), vec4<bool>(-1240f > var_0.b, false, true, true), all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)))), select(vec4<bool>(true, true, !any(vec4<bool>(true, false, true, false)), any(vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), true));
    var var_2 = Struct_1((select(u_input.b, u_input.a ^ -1i, any(var_1.yz)) != 31519i) | true, _wgslsmith_mod_i32(u_input.a, -(~(~u_input.a))), 1u, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.a, -1i | u_input.a, i32(-1i) * -1i, _wgslsmith_sub_i32(u_input.b, u_input.a)), vec4<i32>(u_input.a >> (u_input.c.x % 32u), 2147483647i, _wgslsmith_mod_i32(u_input.b, 2147483647i), i32(-1i) * -1i), (vec4<i32>(u_input.b, u_input.a, 1i, u_input.b) | vec4<i32>(-5109i, u_input.a, 2147483647i, u_input.b)) ^ global0[_wgslsmith_index_u32(select(u_input.c.x, u_input.c.x, true), 9u)]));
    var var_3 = vec3<u32>(~var_2.c, ~var_2.c, _wgslsmith_dot_vec4_u32(u_input.c, min(~u_input.c, ~u_input.c)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true && any(vec4<bool>(true, !select(false, false, true), any(vec3<bool>(true, true, true)), any(vec2<bool>(false, true))));
    let var_1 = vec4<bool>(func_1(), var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(428f + -1572f), -429f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1160f) - _wgslsmith_f_op_f32(func_3()))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1269f, -1005f)))), false & (var_0 | (_wgslsmith_f_op_f32(func_3()) < _wgslsmith_f_op_f32(trunc(395f)))));
    let var_2 = !var_1.x;
    global0 = array<vec4<i32>, 9>();
    let var_3 = false;
    global0 = array<vec4<i32>, 9>();
    var var_4 = !(!var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~(~u_input.b), countOneBits(4748i)));
}

