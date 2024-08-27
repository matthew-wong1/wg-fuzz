struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<i32, 27> = array<i32, 27>(i32(-2147483648), 1i, -14626i, -46184i, -51195i, -63749i, i32(-2147483648), 0i, -1i, -13245i, -3824i, 1i, -5941i, 2147483647i, 1i, 1i, 1i, 54708i, 2147483647i, 2147483647i, 2147483647i, 1i, i32(-2147483648), i32(-2147483648), 8989i, i32(-2147483648), -5598i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = 0u;
    global0 = array<i32, 27>();
    let var_1 = arg_0.d.x;
    let var_2 = !any(arg_0.d) & true;
    global0 = array<i32, 27>();
    return select(vec3<u32>(~abs(_wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x)), var_0, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_1.e, 67682u), vec3<u32>(u_input.a, 4294967295u, _wgslsmith_div_u32(4294967295u, ~48210u))), var_1);
}

fn func_3(arg_0: u32, arg_1: i32) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 27u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-339f - _wgslsmith_div_f32(674f, 871f)), 940f, 154f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(637f, 618f, -500f), vec3<f32>(1909f, -375f, 998f), true)) + vec3<f32>(-1115f, 224f, -177f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-487f, -297f, -275f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-444f, -1259f, 1669f)))))));
    global0 = array<i32, 27>();
    let var_2 = vec3<i32>(i32(-1i) * -1i, ~(~(~abs(global0[_wgslsmith_index_u32(70192u, 27u)]))), -1i);
    var var_3 = true;
    return -1i;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_2(~vec2<i32>(~1i, func_3(19873u ^ arg_1.x, 2147483647i)), ~(arg_1 ^ _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(arg_1, arg_1), arg_1)), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.x, u_input.a, u_input.a) | vec3<u32>(u_input.a, 1u, firstTrailingBit(1u)), vec3<u32>(1u, firstTrailingBit(u_input.a >> (arg_1.x % 32u)), func_1(Struct_2(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(68272u, 27u)]), vec3<u32>(1u, u_input.a, 1u), vec3<u32>(18037u, arg_1.x, arg_1.x), vec2<bool>(true, false)), Struct_1(1u, true, vec4<f32>(arg_0, arg_0, arg_0, arg_0), true, u_input.a)).x | ~u_input.a)), select(!vec2<bool>(any(vec4<bool>(false, true, true, false)), select(true, true, false)), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-arg_0) >= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, arg_0), -1562f, true))));
    var var_1 = abs(select(~reverseBits(vec4<u32>(var_0.c.x, 1u, var_0.c.x, u_input.a) >> (vec4<u32>(0u, arg_1.x, 1u, 1189u) % vec4<u32>(32u))), vec4<u32>(37898u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_1.x, var_0.c.x, 1u, 1u)), ~vec4<u32>(u_input.a, arg_1.x, u_input.a, u_input.a)), arg_1.x, 4294967295u), var_0.d.x || true));
    var var_2 = abs(~(~vec2<u32>(~68362u, _wgslsmith_dot_vec2_u32(var_1.ww, vec2<u32>(var_0.b.x, 4294967295u)))));
    let var_3 = vec4<f32>(-1964f, arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(973f + 132f), -1000f, true)))))), -564f);
    let var_4 = vec3<f32>(arg_0, -632f, _wgslsmith_f_op_f32(trunc(-741f)));
    return Struct_3(-(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a, 27u)], 20459i) & (var_0.a.x >> (u_input.a % 32u))) | _wgslsmith_dot_vec4_i32(vec4<i32>(13266i, abs(global0[_wgslsmith_index_u32(1u, 27u)]), var_0.a.x & 0i, ~(-45427i)), vec4<i32>(firstLeadingBit(47105i), _wgslsmith_sub_i32(-4778i, -1i), -23195i, ~50531i)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.yw)), var_3.wy)), func_3(~var_1.x, firstLeadingBit(var_0.a.x)) <= (i32(-1i) * -13367i));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: vec2<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), -581f, -828f));
    let var_1 = Struct_3(reverseBits(0i), _wgslsmith_f_op_vec2_f32(-var_0.xx), !(true != all(vec3<bool>(arg_1.c, false, false))));
    var_0 = vec3<f32>(1f, arg_1.b.x, -1395f);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-724f, 2239f, var_0.x)))))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), 1296f, -278f)))));
    let var_2 = u_input.a;
    return _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(var_1.a, global0[_wgslsmith_index_u32(24520u, 27u)]), vec2<i32>(arg_1.a, arg_0), arg_3), countOneBits(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 27u)]))), vec2<i32>(-2641i, 29535i)), select(firstLeadingBit(~vec2<i32>(2147483647i, var_1.a)), ~(~vec2<i32>(-24259i, -2147483647i)), true)), vec2<i32>(-3625i, -19249i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 27>();
    var var_0 = Struct_2(func_4(_wgslsmith_sub_i32(-54701i, -(~1i)), func_2(1035f, select(func_1(Struct_2(vec2<i32>(36469i, -2147483647i), vec3<u32>(18671u, 0u, 52607u), vec3<u32>(u_input.a, 29112u, 1u), vec2<bool>(true, true)), Struct_1(1u, true, vec4<f32>(1467f, -315f, 307f, 1000f), true, u_input.a)), vec3<u32>(60108u, 24945u, 46601u) ^ vec3<u32>(4294967295u, u_input.a, u_input.a), true)), -_wgslsmith_mod_i32(i32(-1i) * -1i, max(global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(3103u, 27u)])), vec2<bool>(true, true)), vec3<u32>(_wgslsmith_mult_u32(u_input.a, select(4294967295u, u_input.a, true) >> (~u_input.a % 32u)), ~(~39669u), 1u), abs(~max(vec3<u32>(4294967295u, u_input.a, u_input.a) | vec3<u32>(u_input.a, 4294967295u, 1u), countOneBits(vec3<u32>(28045u, u_input.a, 27388u)))), !vec2<bool>(false, func_2(_wgslsmith_div_f32(1740f, -255f), abs(vec3<u32>(u_input.a, 40133u, 4294967295u))).c));
    var var_1 = _wgslsmith_mod_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(~(~vec3<i32>(-1i, -45218i, var_0.a.x)), min(_wgslsmith_add_vec3_i32(vec3<i32>(65079i, var_0.a.x, -1i), vec3<i32>(var_0.a.x, global0[_wgslsmith_index_u32(4294967295u, 27u)], var_0.a.x)), vec3<i32>(-16346i, 30456i, var_0.a.x)))), -max(_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], -2147483647i, var_0.a.x), select(vec3<i32>(0i, -2147483647i, var_0.a.x), vec3<i32>(-35774i, -1i, global0[_wgslsmith_index_u32(u_input.a, 27u)]), var_0.d.x)), vec3<i32>(abs(global0[_wgslsmith_index_u32(1u, 27u)]), global0[_wgslsmith_index_u32(~var_0.b.x, 27u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-16187i, global0[_wgslsmith_index_u32(var_0.c.x, 27u)], 92353i), vec3<i32>(global0[_wgslsmith_index_u32(110139u, 27u)], 1i, global0[_wgslsmith_index_u32(1u, 27u)])))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-929f, 1000f) - vec2<f32>(1760f, 521f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 788f) - vec2<f32>(-129f, -490f)), var_0.d.x)), vec2<bool>(false, var_0.d.x)))))));
    var var_3 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(func_1(Struct_2(var_1.xy, vec3<u32>(u_input.a, var_0.c.x, 61654u), var_0.b, var_0.d), Struct_1(u_input.a, var_0.d.x, vec4<f32>(-186f, var_2.x, var_2.x, 335f), var_0.d.x, 55230u)).x, _wgslsmith_dot_vec2_u32(var_0.c.xx, vec2<u32>(20056u, 0u)), ~firstLeadingBit(9405u), abs(u_input.a)), firstLeadingBit(~vec4<u32>(var_0.c.x, 1u, u_input.a, 48349u))), false, vec4<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -299f), _wgslsmith_f_op_f32(step(var_2.x, var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(ceil(134f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-824f)) - var_2.x))), _wgslsmith_f_op_f32(-var_2.x) > var_2.x, _wgslsmith_dot_vec3_u32(max(max(~var_0.c, select(var_0.b, vec3<u32>(var_0.b.x, 97694u, 4294967295u), false)), vec3<u32>(_wgslsmith_div_u32(var_0.b.x, var_0.b.x), var_0.c.x, var_0.b.x)), ~(var_0.c | vec3<u32>(u_input.a, var_0.c.x, u_input.a)) >> (vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), 45481u, _wgslsmith_dot_vec2_u32(var_0.b.zz, vec2<u32>(u_input.a, 0u))) % vec3<u32>(32u))));
    var_1 = -reverseBits(~(~_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(31255u, 27u)], global0[_wgslsmith_index_u32(var_3.a, 27u)], global0[_wgslsmith_index_u32(var_0.c.x, 27u)]), vec3<i32>(1i, 1i, global0[_wgslsmith_index_u32(var_0.b.x, 27u)]))));
    var var_4 = _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -435f))), var_0.b).b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(472f, 1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.c.x)))))));
}

