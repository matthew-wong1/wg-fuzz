struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_2(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), false)));
    let var_1 = vec4<f32>(-1751f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-900f + 2240f)))))), 1814f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-764f + _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))))));
    var var_2 = ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, max(24444u & u_input.c, firstLeadingBit(u_input.c)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, 2327u, 0u))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, 6047u, 4294967295u), vec3<u32>(58345u, 117926u, u_input.c)));
    var_2 = ((_wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.x, var_2.x, 4294967295u), vec3<u32>(0u, 4294967295u, var_2.x) << (vec3<u32>(u_input.c, 1u, u_input.c) % vec3<u32>(32u))) ^ ~(~vec3<u32>(u_input.c, 4294967295u, u_input.c))) >> (vec3<u32>(_wgslsmith_mod_u32(var_2.x, 4294967295u) ^ ~1u, ~(~var_2.x), 29780u) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_div_u32(1u, u_input.c), firstTrailingBit(43894u), 0u)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, 51941u), 4294967295u, 40806u >> (var_2.x % 32u)), ~1u, var_2.x)) % vec3<u32>(32u));
    var var_3 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(45008u, var_2.x), u_input.c), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c, 0u), var_2.x ^ var_2.x)), var_2.x, var_2.x, u_input.c));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2011f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-491f, -1025f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(115f)), -220f), any(!vec4<bool>(arg_2.x, arg_1.a.x, arg_1.a.x, false))))));
    var var_1 = ~(~(~(~(arg_0 >> (u_input.c % 32u)))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -272f)));
    var var_2 = Struct_1(max(max(vec4<u32>(u_input.c, u_input.c, countOneBits(32858u), arg_0), vec4<u32>(firstLeadingBit(4294967295u), abs(u_input.c), arg_0, ~arg_0)), vec4<u32>(0u, 41425u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(15980u, 77493u, 92338u, 41922u)), ~vec4<u32>(0u, 1953u, u_input.c, u_input.c)), _wgslsmith_div_u32(arg_0, u_input.c >> (u_input.c % 32u)))));
    var_1 = ~0u;
    return -35925i;
}

fn func_1() -> f32 {
    let var_0 = ~func_2(u_input.c, Struct_2(vec3<bool>(true, true, true)), vec2<bool>(true, max(-1i, 0i) >= ~u_input.a));
    var var_1 = Struct_2(select(select(vec3<bool>(true, false, false), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), all(vec3<bool>(false, false, true)))), vec3<bool>(!any(vec4<bool>(false, false, false, false)), true, any(vec2<bool>(true, true))), true));
    var_1 = Struct_2(select(!vec3<bool>(true, true, var_1.a.x & true), !var_1.a, var_1.a));
    let var_2 = !(!(!select(vec3<bool>(var_1.a.x, var_1.a.x, true), !var_1.a, var_1.a)));
    let var_3 = !var_1.a.x;
    return 914f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!select(vec3<bool>(false, false, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), select(true, true, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(135f, 863f, -680f, 700f))))), vec4<f32>(-997f, _wgslsmith_f_op_f32(select(-1165f, 292f, false)), 1000f, _wgslsmith_f_op_f32(step(2305f, -1681f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-1491f, -1399f)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(435f + -681f), -1925f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1318f, -1000f, -1169f, -1000f), vec4<f32>(2004f, -1008f, -1677f, -1151f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(389f, -1000f, -467f, -1402f))))), !select(!(!vec4<bool>(true, var_0.a.x, var_0.a.x, true)), !select(vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), vec4<bool>(false, var_0.a.x, false, true), vec4<bool>(false, var_0.a.x, true, var_0.a.x)), _wgslsmith_mult_i32(2147483647i, u_input.a) == ~u_input.a)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x)))));
    let var_3 = abs(_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(5804u, u_input.c, u_input.c)), vec3<u32>(_wgslsmith_mult_u32(u_input.c, u_input.c), 62896u, u_input.c)) & max(_wgslsmith_div_u32(_wgslsmith_mult_u32(12268u, 40770u), u_input.c), select(u_input.c, _wgslsmith_add_u32(u_input.c, u_input.c), true)));
    let var_4 = all(var_0.a.zz);
    let x = u_input.a;
    s_output = StorageBuffer(582f, _wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.b), vec4<i32>(u_input.a, 22422i, u_input.a, 18882i), vec4<bool>(var_4, var_0.a.x, var_0.a.x, true)), -vec4<i32>(u_input.a, u_input.b, -60992i, 13868i)), abs(vec4<i32>(u_input.a, 1356i, u_input.b, u_input.b)) << ((firstTrailingBit(vec4<u32>(89266u, u_input.c, 1u, u_input.c)) >> (vec4<u32>(5385u, u_input.c, u_input.c, var_3) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>((u_input.a ^ -2147483647i) | 2147483647i, firstLeadingBit(-17229i), firstLeadingBit(u_input.b), min(2147483647i, 6859i))), var_2);
}

