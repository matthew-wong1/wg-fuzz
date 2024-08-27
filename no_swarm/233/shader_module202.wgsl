struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-23874i, 8472i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global0 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(2147483647i, u_input.e.x >> (u_input.b % 32u)), global0.x, _wgslsmith_clamp_i32(12637i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), -2147483647i))), vec3<i32>(_wgslsmith_div_i32(-u_input.a, ~(-2147483647i)), 2147483647i ^ -global0.x, _wgslsmith_mult_i32(global0.x, 51251i)) >> (vec3<u32>(min(~u_input.b, u_input.b), 14468u & u_input.b, u_input.b) % vec3<u32>(32u)), -_wgslsmith_div_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(u_input.e.x, u_input.d.x, 19363i))), vec3<i32>(~global0.x, 0i, _wgslsmith_clamp_i32(-31268i, -2147483647i, -2147483647i))));
    global0 = ~u_input.e;
    global0 = -u_input.c.wzy;
    global0 = vec3<i32>(firstLeadingBit(~select(77260i, global0.x, true) ^ firstTrailingBit(_wgslsmith_mod_i32(global0.x, 16441i))), min(1i, 2147483647i), reverseBits(_wgslsmith_sub_i32(global0.x, global0.x)));
    let var_0 = _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(_wgslsmith_add_i32(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-20420i, u_input.a), u_input.c.wy)), 1i, -2147483647i, global0.x)) | u_input.c;
    return countOneBits(u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    global0 = arg_0.e & vec3<i32>(1i, 8944i, -9171i | arg_1);
    global0 = arg_0.e;
    global0 = ~(-arg_0.e);
    let var_0 = 0u;
    var var_1 = false;
    return firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 390u, u_input.b, arg_0.a.x), _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(arg_0.a, arg_0.a, vec4<u32>(u_input.b, 20168u, 1u, u_input.b)), vec4<u32>(func_3(arg_0.c), _wgslsmith_mult_u32(arg_0.b.x, 12080u), ~arg_0.d, ~var_0))));
}

fn func_2() -> vec2<bool> {
    global0 = u_input.e;
    var var_0 = Struct_1(func_4(Struct_1(vec4<u32>(16733u, 1u, 1u, func_3(vec3<f32>(-589f, 1282f, -246f))), select(~vec2<u32>(62392u, u_input.b), ~vec2<u32>(u_input.b, 40587u), u_input.b != u_input.b), vec3<f32>(_wgslsmith_f_op_f32(780f - 1151f), -553f, _wgslsmith_f_op_f32(min(1172f, 1223f))), u_input.b, -_wgslsmith_add_vec3_i32(vec3<i32>(-24605i, u_input.e.x, 0i), u_input.c.yww)), -(~_wgslsmith_mod_i32(0i, u_input.e.x))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 22484u), vec2<u32>(u_input.b, 1u)), func_4(Struct_1(vec4<u32>(0u, 1u, u_input.b, 23377u), vec2<u32>(u_input.b, u_input.b), vec3<f32>(-519f, 2046f, -118f), u_input.b, u_input.e), 2147483647i).zx), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(u_input.b, 69789u))), vec3<f32>(_wgslsmith_div_f32(-1103f, 1835f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -275f))), _wgslsmith_f_op_f32(sign(2026f))), 4294967295u, ~firstLeadingBit(vec3<i32>(-20630i, ~168i, global0.x & u_input.a)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-474f, 1155f, -1000f, 284f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1086f, 213f, 380f, var_0.c.x)))))))));
    var var_2 = true & any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true));
    var_0 = Struct_1(min(~abs(~vec4<u32>(u_input.b, u_input.b, 40156u, var_0.a.x)), vec4<u32>(var_0.a.x << (46488u % 32u), 32149u >> (1u % 32u), 0u, 49252u)), abs(var_0.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-640f, _wgslsmith_f_op_f32(1024f + var_1.x))), 791f, _wgslsmith_div_f32(1729f, 1000f)), u_input.b, vec3<i32>(_wgslsmith_clamp_i32(-52958i, var_0.e.x, abs(20735i)), firstTrailingBit(_wgslsmith_add_i32(max(-2147483647i, 62550i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e.x, global0.x), vec2<i32>(2147483647i, u_input.c.x)))), ~_wgslsmith_div_i32(var_0.e.x, 15859i) >> (min(~0u, ~35725u) % 32u)));
    return !select(select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true));
}

fn func_1() -> i32 {
    let var_0 = vec4<u32>((14098u & _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 1u), true), vec2<u32>(1u, 0u))) & 4294967295u, countOneBits(u_input.b), (1583u >> (_wgslsmith_div_u32(u_input.b, 4294967295u) % 32u)) << (25656u % 32u), 3543u);
    let var_1 = u_input.e.zy;
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1323f, 252f))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-659f)), _wgslsmith_f_op_f32(-2038f * -665f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1355f, -2112f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(776f, 383f))), func_2())))));
    let var_4 = (((var_0.yy << (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) << (var_0.xw % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 4294967295u)), var_0.yy) % vec2<u32>(32u))) | vec2<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(var_0, var_0)), _wgslsmith_mult_u32(u_input.b, 1u));
    return abs(-abs(-firstLeadingBit(u_input.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = select(u_input.d, _wgslsmith_add_vec3_i32(countOneBits(-vec3<i32>(-10976i, 0i, -2147483647i)), _wgslsmith_mod_vec3_i32(u_input.d, ~_wgslsmith_div_vec3_i32(u_input.d, u_input.d))), vec3<bool>(any(vec4<bool>(var_0 | var_0, !var_0, true, var_0 && var_0)), true, true));
    let var_2 = !vec2<bool>(select(all(!vec4<bool>(false, var_0, var_0, var_0)), false, !var_0), (var_0 || true) && true);
    global0 = vec3<i32>(var_1.x, global0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(select(var_1 ^ vec3<i32>(global0.x, -24296i, var_1.x), vec3<i32>(28285i, -66759i, u_input.e.x), !vec3<bool>(var_0, true, true)), u_input.c.zyw), vec3<i32>(min(0i << (u_input.b % 32u), func_1()), abs(min(-44900i, -2147483647i)), _wgslsmith_div_i32(countOneBits(-75569i), var_1.x >> (5141u % 32u)))));
    global0 = _wgslsmith_mult_vec3_i32(u_input.e, vec3<i32>(-1i) * -vec3<i32>(func_1(), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_1.x, u_input.c.x, 6153i), u_input.c), 1i));
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_clamp_u32(~u_input.b, u_input.b, u_input.b | 4294967295u), u_input.b), ~(~(~vec3<u32>(11912u, u_input.b, 42417u)))));
}

