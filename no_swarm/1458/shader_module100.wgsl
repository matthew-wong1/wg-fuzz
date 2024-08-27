struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(2084f, -1287f, -847f), vec3<f32>(-329f, -168f, -632f), vec3<f32>(-125f, 801f, 533f), vec3<f32>(-157f, 1000f, -1240f), vec3<f32>(957f, -269f, -347f));

var<private> global1: array<vec2<bool>, 32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    global0 = array<vec3<f32>, 5>();
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(min(251f, _wgslsmith_f_op_f32(f32(-1f) * -396f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -566f), _wgslsmith_f_op_f32(abs(-843f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-159f, 2296f, false)), _wgslsmith_f_op_f32(1378f - 1758f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2131f - -929f)))))));
    var var_1 = _wgslsmith_mult_vec4_i32(countOneBits(~(-u_input.b)) & ~max(~u_input.b, -vec4<i32>(-2147483647i, -1i, u_input.a, u_input.b.x)), vec4<i32>(u_input.b.x, -select(firstLeadingBit(13202i), select(-1i, -96555i, false), 23762i < u_input.b.x), firstLeadingBit(abs(u_input.b.x) | 2147483647i), ~firstLeadingBit(u_input.a)));
    var var_2 = Struct_1(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, var_0.x)), var_0.x)), var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x)))));
    var_1 = reverseBits(u_input.b);
    return vec3<bool>(!(!any(vec3<bool>(true, false, true)) || false), false, !((i32(-1i) * -u_input.a) <= 1i));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a);
    global1 = array<vec2<bool>, 32>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(arg_2.a)));
    var var_2 = select(select(!func_3(), vec3<bool>(false, true, true), vec3<bool>(false, any(vec2<bool>(false, true)), all(vec3<bool>(true, true, true)))), !vec3<bool>(!(arg_0.x >= 2147483647i), all(vec3<bool>(true, true, true)), !any(vec4<bool>(false, false, true, true))), true);
    global1 = array<vec2<bool>, 32>();
    return arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-847f, 174f, 697f, 1908f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1600f, -1733f, 626f, 1812f))), _wgslsmith_div_vec4_f32(vec4<f32>(1494f, 334f, -964f, 167f), vec4<f32>(355f, 578f, -721f, -550f))))));
    let var_1 = u_input.b.wy;
    let var_2 = var_0;
    global1 = array<vec2<bool>, 32>();
    var var_3 = func_2(reverseBits(abs(_wgslsmith_div_vec4_i32(-u_input.b, reverseBits(u_input.b)))), Struct_1(var_0.a), var_2);
    return func_2(vec4<i32>(-16787i, ~(u_input.a ^ 2147483647i), 14997i, _wgslsmith_mult_i32(-16577i >> (1u % 32u), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, var_1.x, 0i)))), func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(20842i ^ var_1.x, ~u_input.a, firstTrailingBit(var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 1i, -52384i, -2147483647i), u_input.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 6786i, var_1.x), vec4<i32>(var_1.x, u_input.a, 87190i, -9447i)) ^ (vec4<i32>(-1i, var_1.x, u_input.b.x, 0i) ^ u_input.b)), func_2(countOneBits(u_input.b >> (vec4<u32>(70055u, 0u, 4294967295u, 41791u) % vec4<u32>(32u))), var_2, func_2(~u_input.b, var_0, func_2(u_input.b, var_2, var_0))), Struct_1(var_2.a)), func_2(_wgslsmith_sub_vec4_i32(select(-u_input.b, vec4<i32>(1i, 24661i, 2147483647i, var_1.x), vec4<bool>(true, false, false, false)), vec4<i32>(var_1.x, ~u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 16385i), vec2<i32>(54136i, var_1.x)), 1i)), Struct_1(var_0.a), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~_wgslsmith_dot_vec2_i32(u_input.b.zx, _wgslsmith_clamp_vec2_i32(-u_input.b.ww, -vec2<i32>(-2147483647i, u_input.b.x), u_input.b.zx)) ^ -16039i;
    let var_2 = max(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1, var_1, var_1), vec3<i32>(~_wgslsmith_sub_i32(1i, 1i), 0i, min(select(59340i, var_1, false), ~u_input.a))), u_input.b.yyx << (~vec3<u32>(~53842u, 1u, ~86070u) % vec3<u32>(32u)));
    var var_3 = var_2;
    let var_4 = -1i >> (~4294967295u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~12762u), ~_wgslsmith_mod_u32(~4294967295u, ~0u), ~(~_wgslsmith_mult_u32(14241u, 39154u)), _wgslsmith_dot_vec3_u32(vec3<u32>(24151u, 0u, 51640u), vec3<u32>(4294967295u, 31559u, 5216u)) & 1u), ~(~_wgslsmith_mult_u32(0u, 1u)));
}

