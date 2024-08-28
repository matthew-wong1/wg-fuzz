struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

var<private> global1: vec3<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> i32 {
    global0 = array<vec4<f32>, 29>();
    global0 = array<vec4<f32>, 29>();
    let var_0 = Struct_2(0i, ~vec3<u32>(min(1u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec2_u32(~u_input.b, u_input.b), ~(~4294967295u)), select(firstLeadingBit(vec3<u32>(4367u, u_input.b.x, 25184u)) << (firstLeadingBit(~vec3<u32>(u_input.b.x, 59860u, 102353u)) % vec3<u32>(32u)), firstTrailingBit(~min(vec3<u32>(4294967295u, u_input.b.x, 7977u), vec3<u32>(0u, u_input.b.x, u_input.b.x))), true));
    var var_1 = var_0;
    var var_2 = max(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global1.x, 0i, global1.x) << (var_1.c % vec3<u32>(32u))) << (var_1.c % vec3<u32>(32u)), ~(~firstLeadingBit(vec3<i32>(var_0.a, u_input.a.x, 32316i)))), 0i);
    return ~41720i;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_2(-23430i, ~(~vec3<u32>(u_input.b.x, 1u, 24742u) << (vec3<u32>(u_input.b.x, 0u, 1u) % vec3<u32>(32u))), vec3<u32>(u_input.b.x, u_input.b.x << (abs(firstTrailingBit(48912u)) % 32u), u_input.b.x));
    let var_1 = -56239i;
    global1 = ~vec3<i32>(func_3(), _wgslsmith_add_i32(-1i, ~reverseBits(-28461i)), var_0.a);
    var var_2 = Struct_2(u_input.a.x, ~vec3<u32>(u_input.b.x, 1u, 4294967295u), vec3<u32>(_wgslsmith_mod_u32(~(~u_input.b.x), select(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~61811u, !arg_0)), 19377u, 1u));
    var var_3 = Struct_2(abs(countOneBits(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(17321i, -2147483647i, var_1), _wgslsmith_div_i32(0i, -1i)))), var_0.c, _wgslsmith_add_vec3_u32(var_2.c, vec3<u32>(u_input.b.x, ~(~var_2.c.x), ~(~0u))));
    return Struct_1(reverseBits(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(71i, 0i, -1i, var_3.a), vec4<i32>(1i, var_0.a, 1i, -28275i)))) >> (~vec4<u32>(var_3.c.x, ~72002u, ~22331u, 27604u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1753f)), false, vec4<u32>(var_3.b.x, min(~firstLeadingBit(0u), 0u), 32089u, _wgslsmith_clamp_u32(~0u, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b.x, 1u), reverseBits(4294967295u)), select(_wgslsmith_mult_u32(var_0.b.x, var_2.b.x), ~var_0.b.x, arg_0))), _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_mod_u32(1u, 4294967295u)), var_0.b.x) | (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.c, vec3<u32>(1u, 91936u, 61728u), var_3.b), var_0.c) & u_input.b.x));
}

fn func_1() -> vec3<u32> {
    var var_0 = func_2(true);
    return var_0.d.wyx;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.c.x, select(abs(40420u), _wgslsmith_add_u32(firstLeadingBit(arg_1.b.x), 9619u), -919f >= _wgslsmith_f_op_f32(round(706f)))), arg_1.b.yx);
    var var_1 = func_2(all(vec2<bool>(false, false)));
    var_1 = Struct_1(_wgslsmith_add_vec4_i32(-vec4<i32>(arg_1.a, _wgslsmith_mod_i32(var_1.a.x, 26935i), arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, -40841i), vec3<i32>(-23671i, var_1.a.x, global1.x))), var_1.a), -1069f, var_1.b != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(476f * var_1.b)))), var_1.d, _wgslsmith_add_u32(1u, 66534u));
    global1 = vec3<i32>(-arg_1.a, ~(~(~1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-var_1.a.x), _wgslsmith_mod_i32(select(1i, 2147483647i, true), _wgslsmith_dot_vec3_i32(var_1.a.zwy, var_1.a.zzx))), u_input.a));
    global1 = _wgslsmith_add_vec3_i32(var_1.a.zyx, _wgslsmith_div_vec3_i32(func_2(true).a.zxy, firstTrailingBit(var_1.a.yyw)));
    return vec3<u32>(select(~16502u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 23244u, 0u, 0u), abs(vec4<u32>(arg_1.b.x, 39712u, 4294967295u, arg_1.b.x)))), !any(select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, var_1.c), var_1.c))), _wgslsmith_add_u32(1u >> (reverseBits(0u) % 32u), arg_1.c.x), 10387u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~((~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), vec3<u32>(1u, u_input.b.x, 30469u), vec3<u32>(21325u, u_input.b.x, u_input.b.x))) | _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), reverseBits(vec3<u32>(0u, 72357u, 7213u)))), func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, ~7773i), firstTrailingBit(firstLeadingBit(vec2<i32>(0i, -31418i)))), Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 63067i, u_input.a.x, global1.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, global1.x)), vec4<i32>(2147483647i, -1i, u_input.a.x, u_input.a.x)), reverseBits(func_1()), vec3<u32>(u_input.b.x, 37494u, ~u_input.b.x))), false);
    global1 = min(vec3<i32>(_wgslsmith_sub_i32(func_2(true).a.x, abs(u_input.a.x)), 44615i & (u_input.a.x << (1u % 32u)), abs(countOneBits(u_input.a.x))), ~(-select(vec3<i32>(-1i, 41986i, u_input.a.x), vec3<i32>(-27502i, 16114i, 22721i), vec3<bool>(false, true, true)))) & -_wgslsmith_mod_vec3_i32(vec3<i32>(46851i, select(6425i, 51740i, true), i32(-1i) * -11486i), (vec3<i32>(u_input.a.x, global1.x, -1i) | vec3<i32>(30534i, u_input.a.x, global1.x)) | vec3<i32>(u_input.a.x, u_input.a.x, global1.x));
    global0 = array<vec4<f32>, 29>();
    let var_1 = 101180u;
    let var_2 = Struct_2(-1i, vec3<u32>(var_1, ~(var_0.x | (u_input.b.x ^ 4294967295u)), var_0.x), _wgslsmith_sub_vec3_u32(max(max(~vec3<u32>(4294967295u, 4294967295u, var_0.x), vec3<u32>(u_input.b.x, var_1, var_0.x)), ~vec3<u32>(4294967295u, 1u, 3005u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, u_input.b.x, 0u), reverseBits(var_0)) ^ (vec3<u32>(38485u, 1u, var_0.x) & (vec3<u32>(0u, u_input.b.x, var_0.x) >> (vec3<u32>(30981u, var_1, 54824u) % vec3<u32>(32u))))));
    var var_3 = reverseBits(global1.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-667f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1001f) * _wgslsmith_f_op_f32(trunc(-1000f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-450f, -1057f) + 986f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(233f, 713f)))) * _wgslsmith_f_op_f32(-306f + _wgslsmith_f_op_f32(f32(-1f) * -1439f)))));
    var var_5 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, firstLeadingBit(-_wgslsmith_add_i32(1i, global1.x)));
}

