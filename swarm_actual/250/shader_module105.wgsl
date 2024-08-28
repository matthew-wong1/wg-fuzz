struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: vec4<i32> = vec4<i32>(4839i, -10278i, 1i, -15700i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 12u)] - -1360f) - -799f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1082f, global0[_wgslsmith_index_u32(u_input.b.x, 12u)])), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 3120f))))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(countOneBits(u_input.c), 12u)])), _wgslsmith_f_op_f32(1774f * _wgslsmith_f_op_f32(632f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(67698u, 12u)] + global0[_wgslsmith_index_u32(u_input.a.x, 12u)])))));
    var var_1 = Struct_1(u_input.b.wz);
    global1 = max(vec4<i32>(-firstLeadingBit(~global1.x), 49188i, i32(-1i) * -2147483647i, -2147483647i), _wgslsmith_mult_vec4_i32(~vec4<i32>(~1i, _wgslsmith_mult_i32(-1i, global1.x), 0i, 34069i), vec4<i32>(global1.x, firstLeadingBit(8157i), 2147483647i, global1.x) >> (vec4<u32>(min(var_1.a.x, 0u), abs(u_input.b.x), ~9065u, ~14693u) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_dot_vec4_u32(select(reverseBits(vec4<u32>(54283u, 45207u, 43912u, 73175u)), u_input.b, vec4<bool>(true, true, true, true)), vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, u_input.b.x), 19067u), ~var_1.a.x << (1u % 32u), u_input.c)) >> (max(~min(firstLeadingBit(u_input.a.x), u_input.c), ~u_input.b.x) % 32u);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(var_1.a.x) << (~0u % 32u), 12u)]) - -131f), _wgslsmith_f_op_f32(874f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 691f)))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = u_input.c;
    let var_1 = Struct_3(0u, _wgslsmith_f_op_f32(func_3()), vec3<bool>(true, all(vec2<bool>(true, true)), true | arg_0), ~u_input.b.xxw, ~u_input.a.x);
    let var_2 = u_input.a.x;
    global1 = -max(vec4<i32>(14658i, -firstTrailingBit(arg_2), -global1.x, arg_2), vec4<i32>(_wgslsmith_clamp_i32(global1.x, 2147483647i, arg_2), countOneBits(-38321i), -global1.x, 41229i << (0u % 32u)) & reverseBits(vec4<i32>(-29088i, -1i, 5530i, global1.x) ^ vec4<i32>(-13341i, global1.x, 12308i, -39606i)));
    global0 = array<f32, 12>();
    return Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(~0u), ~62165u), abs(~firstLeadingBit(vec2<u32>(1u, u_input.b.x)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>) -> Struct_3 {
    global0 = array<f32, 12>();
    var var_0 = func_2(true, false, ~arg_1.x);
    let var_1 = Struct_5(select(select(vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 12u)] >= global0[_wgslsmith_index_u32(1u, 12u)], true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), true)), select(true, select(all(vec4<bool>(true, true, true, false)), all(vec2<bool>(true, false)), true), true)));
    let var_2 = Struct_2(firstLeadingBit(arg_1.wy));
    var var_3 = arg_1.x;
    return Struct_3(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b.wy, u_input.a.zx), firstTrailingBit(var_0.a.x)), ~(~(~19253u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(312f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f * global0[_wgslsmith_index_u32(u_input.a.x, 12u)]))), global0[_wgslsmith_index_u32(abs(abs(var_0.a.x) & 13654u), 12u)]), select(vec3<bool>((-1i >> (var_0.a.x % 32u)) == -2147483647i, true, any(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x))), select(!(!vec3<bool>(true, var_1.a.x, false)), !(!vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), vec3<bool>(var_1.a.x, !var_1.a.x, false)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.a.x, var_1.a.x), vec3<bool>(true, true, var_1.a.x)), select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(false, true, false), vec3<bool>(false, var_1.a.x, var_1.a.x)), vec3<bool>(false, var_1.a.x, var_1.a.x)), select(!vec3<bool>(true, true, var_1.a.x), vec3<bool>(true, true, true), any(vec4<bool>(var_1.a.x, var_1.a.x, true, true))), false)), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.x, u_input.a.x, 1u) ^ u_input.a, countOneBits(vec3<u32>(u_input.a.x, 31850u, 28103u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), u_input.b.zxx), var_0.a.x, ~2819u), select(~u_input.a, u_input.a, !vec3<bool>(var_1.a.x, var_1.a.x, false))) % vec3<u32>(32u)), u_input.b.x & 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1256f, 843f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2021f, 933f))))), (vec4<i32>(29788i, global1.x, global1.x, global1.x) ^ abs(vec4<i32>(1191i, global1.x, global1.x, global1.x))) ^ (vec4<i32>(-19655i, global1.x, global1.x, global1.x) & (vec4<i32>(global1.x, global1.x, 1i, global1.x) << (u_input.b % vec4<u32>(32u))))), global1.wz, vec2<u32>(4294967295u, _wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 8898u, 129663u, 4294967295u), ~u_input.b))), 1u, Struct_2((reverseBits(global1.xy) >> (u_input.a.xy % vec2<u32>(32u))) ^ vec2<i32>(_wgslsmith_mult_i32(global1.x, 1i), global1.x)));
    var_0 = Struct_4(Struct_3(_wgslsmith_mult_u32(u_input.a.x & _wgslsmith_sub_u32(0u, var_0.c.x), u_input.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.b, -625f)) - -156f))), vec3<bool>(any(select(var_0.a.c.xz, var_0.a.c.zx, false)), var_0.a.c.x, true), vec3<u32>(~(~18762u), 2143u, 11876u), var_0.d), reverseBits(vec2<i32>(21917i, select(-22079i, 2147483647i, false)) << (~vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))), firstLeadingBit(u_input.b.xw), u_input.b.x << (4294967295u % 32u), Struct_2(_wgslsmith_add_vec2_i32((global1.ww >> (var_0.a.d.xy % vec2<u32>(32u))) | _wgslsmith_div_vec2_i32(vec2<i32>(var_0.e.a.x, global1.x), var_0.e.a), vec2<i32>(global1.x, var_0.b.x) | var_0.b)));
    let var_1 = Struct_1(abs(~var_0.c) | var_0.a.d.yy);
    var_0 = Struct_4(Struct_3(min(_wgslsmith_mult_u32(44367u, firstLeadingBit(52538u)), abs(max(4294967295u, 71088u))), 206f, vec3<bool>(var_0.a.c.x & (global1.x > var_0.e.a.x), true == var_0.a.c.x, false), var_0.a.d, 11501u), abs(vec2<i32>(firstTrailingBit(-51246i), ~_wgslsmith_mult_i32(var_0.b.x, -1i))), vec2<u32>(~var_1.a.x, u_input.a.x), ~_wgslsmith_sub_u32(var_1.a.x, min(var_1.a.x, 13243u)), var_0.e);
    var_0 = Struct_4(func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(48249u, 12u)], var_0.a.b)), 1106f))), ~vec4<i32>(max(0i, global1.x), -var_0.b.x, reverseBits(global1.x), var_0.b.x)), global1.wx, vec2<u32>(~var_0.a.e, select(var_0.d, 1u, false & (var_0.e.a.x == -24792i))), _wgslsmith_mult_u32(~(~16303u), 20475u), var_0.e);
    let var_2 = 0u;
    global0 = array<f32, 12>();
    let var_3 = _wgslsmith_add_u32(~74244u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(firstTrailingBit(22267u), firstLeadingBit(~4294967295u)), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1.a ^ _wgslsmith_add_vec2_u32(vec2<u32>(42930u, 0u), countOneBits(vec2<u32>(25540u, 1u))), var_0.c), select(min(vec4<i32>(i32(-1i) * -1i, var_0.e.a.x | 0i, global1.x >> (1u % 32u), var_0.e.a.x >> (4294967295u % 32u)), select(vec4<i32>(var_0.b.x, global1.x, var_0.e.a.x, -40956i), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, -16650i, global1.x, global1.x), vec4<i32>(1i, global1.x, var_0.b.x, global1.x)), all(var_0.a.c.xy))), min(vec4<i32>(var_0.e.a.x, -1i, -33520i | var_0.e.a.x, countOneBits(var_0.e.a.x)), vec4<i32>(global1.x, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e.a.x, var_0.b.x), global1.yw), 1i)), select(vec4<bool>(true, any(var_0.a.c), var_0.e.a.x >= var_0.e.a.x, var_0.a.c.x), select(vec4<bool>(true, var_0.a.c.x, true, var_0.a.c.x), vec4<bool>(var_0.a.c.x, false, true, true), select(vec4<bool>(var_0.a.c.x, var_0.a.c.x, true, true), vec4<bool>(true, false, var_0.a.c.x, var_0.a.c.x), vec4<bool>(var_0.a.c.x, false, true, true))), !var_0.a.c.x)), -565f);
}

