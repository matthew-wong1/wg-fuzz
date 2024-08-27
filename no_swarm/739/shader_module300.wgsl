struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
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

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<i32>(2147483647i, 32899i, 1i), true), Struct_2(vec3<i32>(32438i, -23249i, -31123i), true), Struct_2(vec3<i32>(57553i, 0i, 34866i), false), Struct_2(vec3<i32>(-54482i, -43674i, 16255i), true), Struct_2(vec3<i32>(2147483647i, -20747i, 1i), true), Struct_2(vec3<i32>(154i, i32(-2147483648), -1i), true), Struct_2(vec3<i32>(-45360i, -31574i, i32(-2147483648)), true), Struct_2(vec3<i32>(38046i, -17271i, i32(-2147483648)), false), Struct_2(vec3<i32>(-43021i, i32(-2147483648), -2843i), true), Struct_2(vec3<i32>(0i, i32(-2147483648), 29191i), false), Struct_2(vec3<i32>(i32(-2147483648), 1i, -29633i), false), Struct_2(vec3<i32>(-12725i, i32(-2147483648), -54488i), false), Struct_2(vec3<i32>(33031i, 1i, 2147483647i), false), Struct_2(vec3<i32>(-3223i, 6734i, 1i), false), Struct_2(vec3<i32>(-36836i, i32(-2147483648), 14851i), true), Struct_2(vec3<i32>(1i, -8823i, 17582i), false), Struct_2(vec3<i32>(1520i, 2147483647i, 0i), true), Struct_2(vec3<i32>(0i, 1i, -2667i), true), Struct_2(vec3<i32>(i32(-2147483648), -41210i, -1i), true), Struct_2(vec3<i32>(-32434i, 2147483647i, i32(-2147483648)), false), Struct_2(vec3<i32>(-35881i, 0i, 2147483647i), false), Struct_2(vec3<i32>(-36653i, 32936i, -9937i), false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1185f))))));
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zz + arg_0.xz) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1330f, 2014f)) + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(ceil(arg_0.x))))), -1233f));
    return vec2<i32>(u_input.c.x, u_input.c.x);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<i32>) -> u32 {
    global0 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-603f, -248f, -175f, -826f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1077f, 1499f, -1854f, 1000f))))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(669f, -362f, _wgslsmith_div_f32(-111f, _wgslsmith_f_op_f32(max(-470f, -1510f))), 164f), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-490f)))), -339f, 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(min(-965f, -891f)))), arg_2)));
    var var_1 = arg_2.yz;
    var_1 = vec2<bool>(all(select(!select(vec4<bool>(var_1.x, true, true, arg_2.x), vec4<bool>(true, true, true, arg_1.b), true), !select(arg_2, vec4<bool>(arg_2.x, arg_1.b, false, arg_2.x), true), select(!arg_2, arg_2, select(vec4<bool>(var_1.x, true, false, false), arg_2, vec4<bool>(arg_2.x, true, true, arg_1.b))))), var_1.x);
    return u_input.b;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec4<u32> {
    let var_0 = vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -func_2(vec4<f32>(270f, 998f, -1334f, arg_0.b.x), vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_1), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(449f, 343f, 343f, -1794f)))), vec4<bool>(!arg_0.a.x, all(vec4<bool>(true, false, arg_0.a.x, arg_0.a.x)), all(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false)), true), ~arg_1)), _wgslsmith_dot_vec2_i32(select(-(~vec2<i32>(8405i, -2147483647i)), u_input.c.zz, !select(arg_0.a, vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a)), _wgslsmith_mult_vec2_i32(-abs(u_input.c.zx), vec2<i32>(~225i, u_input.c.x))));
    var var_1 = _wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.a, arg_1, _wgslsmith_dot_vec2_u32(~u_input.e.zz, ~vec2<u32>(u_input.a, 0u)), arg_1), ~(~vec4<u32>(0u, 33512u, 71619u, u_input.b))), countOneBits(countOneBits(vec4<u32>(0u, 828u, arg_1, 30826u)) & _wgslsmith_div_vec4_u32(select(vec4<u32>(32669u, arg_1, u_input.b, 5645u), vec4<u32>(24626u, u_input.e.x, 40736u, 1u), true), vec4<u32>(0u, 47575u, arg_1, u_input.b) & vec4<u32>(4294967295u, u_input.a, u_input.b, 13280u))), vec4<u32>(u_input.e.x, 0u, ~arg_1, _wgslsmith_add_u32(~25117u, u_input.b)) & vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x), u_input.e), _wgslsmith_clamp_u32(u_input.b, arg_1, 1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), u_input.e.yy), ~u_input.e.yx), countOneBits(57337u), firstLeadingBit(arg_1)));
    global0 = array<Struct_2, 22>();
    var_1 = vec4<u32>(var_1.x, reverseBits(func_3(24764u, global0[_wgslsmith_index_u32(arg_1, 22u)], vec4<bool>(true, true, false, 3523u < u_input.e.x), vec4<i32>(-2147483647i, -1i & var_0.x, var_0.x, select(u_input.c.x, 2147483647i, false)))), 1u, ~_wgslsmith_sub_u32(~abs(u_input.b), _wgslsmith_sub_u32(firstTrailingBit(arg_1), var_1.x)));
    var var_2 = vec2<u32>(4294967295u, ~21660u);
    return ~(~max(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.x, var_2.x, 0u, 4294967295u), ~vec4<u32>(0u, 0u, 1u, 4294967295u)), vec4<u32>(arg_1, ~1u, _wgslsmith_div_u32(36945u, var_1.x), _wgslsmith_dot_vec3_u32(var_1.wzz, u_input.e))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 22>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_1(Struct_1(vec2<bool>(all(vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(795f, 1000f, 1037f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-306f, -1000f, -1435f))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -657f), _wgslsmith_f_op_f32(664f - 587f))), max(0u, u_input.a)), reverseBits(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) << (vec4<u32>(u_input.e.x, 16411u, 1u, 36248u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, u_input.a), vec4<u32>(u_input.a, 30098u, u_input.e.x, 4294967295u))), ~(~vec4<u32>(4294967295u, 6831u, 10181u, u_input.a)), vec4<bool>(true, true, true, true)))), 22u)];
    let var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

