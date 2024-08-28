struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: f32;

var<private> global1: vec4<i32>;

var<private> global2: Struct_1 = Struct_1(4294967295u, 741f, vec4<f32>(1558f, 396f, 1627f, -1000f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u >> (countOneBits(var_0.a) % 32u), var_0.a), vec4<u32>(arg_0.a, abs(_wgslsmith_add_u32(u_input.a.x, arg_1.a)), 1u, 4294967295u)), -1024f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.c.x, -370f), 1000f, _wgslsmith_f_op_f32(abs(931f)), _wgslsmith_f_op_f32(sign(-1541f))) + vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1.c.x)), -1246f, _wgslsmith_f_op_f32(min(var_0.c.x, -1000f)), -1028f))));
    let var_2 = global2.a;
    let var_3 = var_1;
    let var_4 = vec4<i32>(~_wgslsmith_dot_vec4_i32(select(-vec4<i32>(global1.x, -15495i, global1.x, -7500i), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<i32>(1i, -2147483647i, global1.x, -1366i)), all(vec4<bool>(false, true, true, false))), -vec4<i32>(global1.x, -2147483647i, 2147483647i, 2147483647i)), 56252i, global1.x, ~max(_wgslsmith_mod_i32(-11699i, global1.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(global1.x, 3610i, global1.x), abs(global1.xyx))));
    return 0u;
}

fn func_2(arg_0: f32) -> vec2<i32> {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-119f))));
    var var_0 = Struct_1(firstTrailingBit(0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2101f, arg_0)) * _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1178f, 1773f, 162f), vec4<f32>(-1230f, -507f, -817f, -621f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.c, vec4<f32>(-1350f, 1000f, -321f, -573f))), true)) - global2.c));
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, func_3(Struct_1(var_0.a, 423f, vec4<f32>(global2.b, -2139f, arg_0, var_0.c.x)), Struct_1(10003u, var_0.c.x, global2.c))), ~u_input.a), _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b, 711f, arg_0, arg_0), global2.c, false)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, global2.c.x, -969f, 602f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-692f, var_0.b, 423f, global2.b), vec4<f32>(global2.c.x, -959f, global2.b, var_0.b), vec4<bool>(false, true, false, true)))))))));
    var_0 = Struct_1(_wgslsmith_sub_u32(~firstLeadingBit(7787u), 26292u), _wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, global2.c.x, -508f, 1000f) + vec4<f32>(global2.b, 1163f, 423f, global2.c.x))))) - vec4<f32>(1f, global2.b, 421f, var_0.c.x)));
    let var_1 = _wgslsmith_div_vec2_i32(~_wgslsmith_add_vec2_i32(global1.ww, -global1.xz | _wgslsmith_mult_vec2_i32(global1.zw, global1.xy)), -_wgslsmith_mod_vec2_i32(~(~global1.xx), abs(abs(vec2<i32>(global1.x, global1.x)))));
    return select(~min(~vec2<i32>(1i, 33552i) >> (~vec2<u32>(global2.a, 4294967295u) % vec2<u32>(32u)), -(global1.yx << (u_input.a.yx % vec2<u32>(32u)))), countOneBits(vec2<i32>(-32890i, _wgslsmith_mod_i32(-22213i, global1.x)) >> (~firstTrailingBit(vec2<u32>(52294u, global2.a)) % vec2<u32>(32u))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true))) | any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))));
}

fn func_1() -> vec3<i32> {
    var var_0 = reverseBits(firstLeadingBit(func_2(2061f)));
    return _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, var_0.x, -_wgslsmith_div_i32(2147483647i, -2147483647i)), _wgslsmith_sub_vec3_i32(max(global1.yyw, vec3<i32>(-27931i, var_0.x, global1.x)) << ((u_input.a | vec3<u32>(0u, 17826u, global2.a)) % vec3<u32>(32u)), -(global1.xxw | vec3<i32>(14087i, 2147483647i, global1.x)))), -min(min(_wgslsmith_clamp_vec3_i32(global1.zwz, vec3<i32>(-2147483647i, -17194i, 1i), vec3<i32>(global1.x, 18427i, global1.x)), _wgslsmith_div_vec3_i32(global1.xyx, vec3<i32>(9932i, global1.x, 2147483647i))), global1.zyw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~_wgslsmith_mult_vec3_i32(global1.www, global1.yyw & select(global1.zyx, vec3<i32>(global1.x, -7095i, global1.x), vec3<bool>(true, false, true))), _wgslsmith_sub_vec3_i32(func_1(), global1.wzy));
    let var_1 = ~(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.a.yz, ~u_input.a.xy, ~u_input.a.yy), u_input.a.xx) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 62015u), max(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xz)));
    global2 = Struct_1(func_3(Struct_1(firstTrailingBit(firstLeadingBit(1u)), _wgslsmith_f_op_f32(536f - _wgslsmith_f_op_f32(-678f + global2.b)), vec4<f32>(767f, _wgslsmith_f_op_f32(select(189f, global2.c.x, false)), _wgslsmith_f_op_f32(-global2.b), -1025f)), Struct_1(_wgslsmith_sub_u32(~1u, global2.a), -400f, global2.c)), global2.c.x, vec4<f32>(_wgslsmith_f_op_f32(max(global2.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1235f + -804f))))), 1f, _wgslsmith_f_op_f32(step(-168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1271f))))), global2.c.x));
    global1 = min(_wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(-23529i, global1.x, 2147483647i, var_0.x), vec4<i32>(23649i, -1376i, 35532i, var_0.x)), vec4<i32>(2147483647i, 18840i, global1.x, global1.x) ^ vec4<i32>(18721i, -28659i, var_0.x, global1.x)), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, global1.x, -23502i, global1.x), vec4<i32>(30016i, -1i, -1i, -80744i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global2.a, var_1, var_1, 19026u), vec4<u32>(83300u, 0u, global2.a, 0u)) % vec4<u32>(32u)))) << (vec4<u32>(var_1, 0u, _wgslsmith_add_u32(476u & countOneBits(var_1), _wgslsmith_div_u32(global2.a, select(35025u, 0u, false))), firstLeadingBit(0u)) % vec4<u32>(32u));
    let var_2 = global2.a;
    let var_3 = !select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), vec3<bool>(false, !all(vec4<bool>(true, true, false, false)), all(vec3<bool>(false, false, true))), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true)) & select(true, false, any(vec2<bool>(false, false))));
    let var_4 = -global1.x;
    let var_5 = _wgslsmith_f_op_vec4_f32(abs(global2.c));
    let var_6 = _wgslsmith_mod_vec4_u32((firstLeadingBit(~vec4<u32>(0u, 3067u, 35575u, global2.a)) << ((firstTrailingBit(vec4<u32>(72824u, u_input.a.x, 0u, var_1)) >> (abs(vec4<u32>(0u, 101487u, global2.a, global2.a)) % vec4<u32>(32u))) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a.x, var_1, 16072u, ~27089u), ~countOneBits(vec4<u32>(1u, var_1, var_1, global2.a))) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(22239u, _wgslsmith_div_u32(~0u, ~0u), firstTrailingBit(22750u) ^ var_1, reverseBits(~20758u))));
    let x = u_input.a;
    s_output = StorageBuffer(1716f);
}

