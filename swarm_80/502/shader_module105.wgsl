struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2) -> u32 {
    global0 = array<bool, 3>();
    let var_0 = select(select(select(!arg_2.a.a, vec2<bool>(true, global0[_wgslsmith_index_u32(~4294967295u, 3u)]), select(select(vec2<bool>(arg_2.d.a.x, arg_2.d.a.x), vec2<bool>(arg_0, arg_0), arg_2.a.a.x), arg_2.e.a, arg_0)), select(select(vec2<bool>(true, arg_0), select(arg_2.d.a, arg_2.d.a, global0[_wgslsmith_index_u32(u_input.a, 3u)]), select(arg_2.a.a, arg_2.e.a, arg_2.a.a)), select(arg_2.a.a, vec2<bool>(arg_2.e.a.x, true), 4294967295u != arg_2.c.x), vec2<bool>(true, true)), true), !vec2<bool>(true != all(vec4<bool>(true, arg_2.d.a.x, arg_2.a.a.x, arg_0)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), ~vec4<u32>(5651u, 1u, 4294967295u, 1u)), 3u)]), true);
    let var_1 = arg_2.b.x;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2029f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a.c, 818f)), _wgslsmith_f_op_f32(abs(-1715f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e.c * arg_1.x) - _wgslsmith_div_f32(-1000f, arg_2.a.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_2.e.c, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1174f, arg_2.d.c, arg_2.d.c, arg_2.d.c), vec4<f32>(-924f, arg_1.x, 854f, arg_2.d.c))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -1887f, 357f, -568f), vec4<f32>(-523f, arg_2.e.c, arg_2.a.c, 715f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.c, arg_1.x, arg_1.x, -587f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1136f, -745f, 667f, 1551f)), arg_2.d.a.x))))));
    var var_3 = ~arg_2.a.b;
    return ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(12362u, var_1, var_1), var_3.x);
}

fn func_2(arg_0: vec3<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.xz, _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(_wgslsmith_mod_i32(arg_0.x, u_input.c), u_input.b))), ~max(-arg_0.yz << (_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 16004u)) % vec2<u32>(32u)), arg_0.zz));
    global0 = array<bool, 3>();
    let var_1 = !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(18150u), u_input.a), 3u)];
    let var_2 = 0i;
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1932f, -1000f, -413f, 1988f) - vec4<f32>(111f, 446f, 1318f, -1126f)) - vec4<f32>(-938f, 1000f, -1649f, 3476f))))));
    return vec3<u32>(_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, u_input.a), firstTrailingBit(vec2<u32>(0u, 0u)))), abs(~vec2<u32>(0u, u_input.a))), 17264u, abs(func_3(false, vec2<f32>(_wgslsmith_f_op_f32(var_3.x - var_3.x), var_3.x), Struct_2(Struct_1(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)]), vec3<u32>(u_input.a, 1u, u_input.a), 505f, u_input.a), vec2<u32>(1817u, 0u), ~vec3<u32>(u_input.a, 29758u, u_input.a), Struct_1(vec2<bool>(false, true), vec3<u32>(u_input.a, 37894u, u_input.a), var_3.x, u_input.a), Struct_1(vec2<bool>(false, true), vec3<u32>(4918u, 15424u, u_input.a), var_3.x, u_input.a)))));
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1802f, -1301f, -1000f))))))));
    var var_1 = 0i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-682f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_3 = var_2;
    var var_4 = vec2<u32>(805u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a) & vec2<u32>(1u, u_input.a), ~vec2<u32>(u_input.a, u_input.a))) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4380u, u_input.a), vec3<u32>(12493u, u_input.a, u_input.a)) << (vec3<u32>(u_input.a, 4294967295u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(5980u, 0u, ~1u)) % 32u));
    return _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.c) ^ vec3<i32>(35450i, u_input.c, u_input.c), vec3<i32>(u_input.b, 8600i, u_input.c) ^ vec3<i32>(20505i, u_input.b, -31048i))), countOneBits(~max(vec3<u32>(33100u, var_4.x, 0u), vec3<u32>(1u, 1u, 29037u)))), vec3<u32>(var_4.x, ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(11150u, 0u), vec2<u32>(u_input.a, 89215u)), ~u_input.a), ~var_4.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(func_1(), ~select(reverseBits(vec3<u32>(11177u, u_input.a, u_input.a)), vec3<u32>(0u, 6619u, u_input.a) << (vec3<u32>(0u, 112332u, u_input.a) % vec3<u32>(32u)), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 3u)], true))), _wgslsmith_div_vec3_u32(~func_1(), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(42295u, 4294967295u, 50504u))) & ~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(0u, 4294967295u, 1u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a), reverseBits(vec3<u32>(20454u, u_input.a, 0u))), func_1());
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -513f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1175f - 1000f))))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(389f * -937f)) - -570f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = array<bool, 3>();
    let var_2 = select(!(!vec2<bool>(!global0[_wgslsmith_index_u32(0u, 3u)], true)), !vec2<bool>(~4294967295u >= _wgslsmith_add_u32(4576u, u_input.a), true), any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], false)));
    var var_3 = ~u_input.a;
    var var_4 = Struct_1(vec2<bool>(false, true), _wgslsmith_clamp_vec3_u32(var_0, ~_wgslsmith_div_vec3_u32(var_0, vec3<u32>(4294967295u, var_0.x, 31519u)), select(~var_0, vec3<u32>(var_0.x, var_0.x, u_input.a), !vec3<bool>(var_2.x, true, true))) >> (func_2(abs(vec3<i32>(u_input.c, 1i, u_input.b) ^ vec3<i32>(-45769i, -1i, u_input.c))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1284f) + var_1.x), ~4294967295u);
    let var_5 = Struct_1(var_2, vec3<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.x, 1u, u_input.a), vec4<u32>(17408u, u_input.a, var_0.x, 28183u), vec4<u32>(36493u, 1897u, 4294967295u, var_0.x)), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_4.d, 0u, var_0.x), vec4<u32>(var_0.x, 9263u, 4294967295u, var_4.d)))), 1545u, reverseBits(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * 613f) + _wgslsmith_f_op_f32(f32(-1f) * -214f)), _wgslsmith_mult_u32(~(~var_4.d), _wgslsmith_dot_vec3_u32(var_0, _wgslsmith_sub_vec3_u32(var_4.b, vec3<u32>(u_input.a, 30572u, 7776u)))) & abs(u_input.a));
    var var_6 = ~(~select(21063u, 4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, var_4.d), 3u)]));
    var var_7 = Struct_3(!any(!select(vec3<bool>(true, false, false), vec3<bool>(global0[_wgslsmith_index_u32(var_5.b.x, 3u)], var_2.x, false), vec3<bool>(true, false, false))), vec3<i32>(u_input.b, min(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, -49440i, u_input.c), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.c))), u_input.c), -u_input.c), !select(!(!vec3<bool>(var_2.x, true, true)), vec3<bool>(any(var_2), var_4.a.x != false, u_input.c == 2147483647i), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zy, -1558f);
}

