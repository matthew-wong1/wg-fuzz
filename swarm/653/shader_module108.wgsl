struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = countOneBits(~(4349i >> (firstTrailingBit(u_input.c.x) % 32u)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -407f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1463f, 2098f))))));
    let var_2 = 4294967295u;
    var var_3 = vec2<i32>(select(~firstTrailingBit(4683i), 2147483647i & _wgslsmith_sub_i32(var_0, var_0), any(vec2<bool>(false, false))) | _wgslsmith_add_i32(_wgslsmith_div_i32(~25445i, 1i), countOneBits(var_0 << (0u % 32u))), var_0);
    return !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), any(vec3<bool>(true, false, true)))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(Struct_3(Struct_2(37476i, Struct_1(u_input.a, _wgslsmith_f_op_f32(-214f - 264f), vec2<f32>(905f, 957f), vec3<i32>(-2147483647i, 26589i, -39292i) >> (vec3<u32>(0u, u_input.a, u_input.c.x) % vec3<u32>(32u))), Struct_1(_wgslsmith_add_u32(1u, 31746u), -1000f, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(718f, 895f))), firstTrailingBit(vec3<i32>(3566i, -2147483647i, 18140i))), Struct_1(u_input.c.x, _wgslsmith_f_op_f32(round(2477f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1505f, -1814f)), vec3<i32>(10560i, -1i, 75682i))), func_3(), 2298f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), Struct_2(-65259i, Struct_1(_wgslsmith_mod_u32(15063u, u_input.c.x), _wgslsmith_f_op_f32(f32(-1f) * -730f), vec2<f32>(-258f, 464f), -vec3<i32>(-1i, 1281i, 49331i)), Struct_1(1u, _wgslsmith_f_op_f32(f32(-1f) * -752f), vec2<f32>(1f, 1f), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, 1i), vec3<i32>(-1i, 37448i, 3722i))), Struct_1(17764u, _wgslsmith_f_op_f32(-1700f - -920f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1211f, -771f) * vec2<f32>(1086f, 1805f)), ~vec3<i32>(2147483647i, -10820i, 2147483647i)))), u_input.c.x << (_wgslsmith_mod_u32(u_input.c.x, u_input.b) % 32u), Struct_1(~countOneBits(u_input.a), _wgslsmith_f_op_f32(-1000f * -251f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(243f, -1000f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(432f, 1547f)))), _wgslsmith_sub_vec3_i32(vec3<i32>(11752i >> (u_input.b % 32u), select(9289i, 2147483647i, true), _wgslsmith_mult_i32(1i, -16737i)), vec3<i32>(~(-23576i), ~0i, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1375f))) + -485f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, -1000f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.a.d.xyx - vec3<f32>(-384f, var_0.a.d.x, var_0.a.d.x))))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.b), -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-670f + 241f)) * var_0.c.b), var_0.a.a.c.c.x)));
    var var_2 = -667f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -2587f))))));
    let var_3 = Struct_2(var_0.a.e.c.d.x, var_0.c, var_0.a.a.b, Struct_1(var_0.b, -1000f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(460f))), var_0.a.d.x), var_0.c.d));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-260f, _wgslsmith_f_op_f32(round(776f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1531f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)))) * vec3<f32>(_wgslsmith_f_op_f32(var_3.b.c.x * _wgslsmith_f_op_f32(-var_0.c.b)), var_3.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d.x) * 319f) * _wgslsmith_f_op_f32(round(var_0.a.a.c.b)))));
    return var_0.a;
}

fn func_1() -> i32 {
    let var_0 = func_2();
    return func_2().a.c.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_sub_i32(max(firstTrailingBit(reverseBits(-17306i)), _wgslsmith_sub_i32(-4864i, 1i)), func_1()), Struct_1(0u, _wgslsmith_f_op_f32(ceil(-889f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(835f, -303f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 687f), vec2<f32>(477f, 1055f)))), false)), _wgslsmith_div_vec3_i32(~vec3<i32>(1i, 1i, 1i), reverseBits(vec3<i32>(-41134i, -1i, 1i)))), func_2().a.b, Struct_1(~(~u_input.b << (~1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(283f * -278f) + -301f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1698f, 793f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-164f, 1297f) - vec2<f32>(-323f, 972f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-711f, -421f), vec2<f32>(226f, -1000f), false)))), vec3<i32>(abs(-1i), -45918i, select(-1i, -24402i, true) >> (abs(44186u) % 32u))));
    let var_1 = true;
    let var_2 = -var_0.b.d.x;
    var var_3 = select(select(!(!select(vec4<bool>(var_1, var_1, true, false), vec4<bool>(true, var_1, var_1, var_1), false)), select(!select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(true, var_1, true, var_1), false), vec4<bool>(var_1, false != var_1, var_1 || var_1, all(vec4<bool>(false, true, var_1, var_1))), vec4<bool>(false, !var_1, 14655i < var_2, false)), !(!select(vec4<bool>(var_1, false, var_1, false), vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, true, var_1, var_1)))), vec4<bool>(all(!select(vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, false, false, false))), true, !func_3().x, false), select(false, var_1, true));
    var_3 = select(select(vec4<bool>(true, var_1, true, !all(var_3.ywx)), vec4<bool>(true, true, true, true), !all(var_3.xx)), !select(!(!vec4<bool>(var_3.x, var_1, true, true)), select(select(vec4<bool>(true, false, var_1, var_1), vec4<bool>(true, true, true, var_3.x), vec4<bool>(false, var_3.x, true, true)), !vec4<bool>(var_3.x, false, var_3.x, var_3.x), false), false), select(select(!(!vec4<bool>(false, true, false, var_1)), vec4<bool>(false, true, var_0.a != 1i, any(vec3<bool>(var_1, var_3.x, true))), vec4<bool>(true, all(vec4<bool>(var_3.x, var_1, var_1, true)), any(vec2<bool>(var_3.x, var_3.x)), var_1)), !vec4<bool>(var_3.x, func_3().x, true, true), var_3.x));
    var var_4 = Struct_2(~(~(-36022i)), Struct_1(~(~countOneBits(u_input.c.x)), _wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.b, var_0.c.b) - var_0.d.c)))), firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.d.x, 15471i, 0i), var_0.c.d), func_2().e.d.d))), func_2().e.d, func_2().a.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(u_input.c, ~vec3<u32>(u_input.b, 4294967295u, var_0.b.a)) >> (min(u_input.c, max(vec3<u32>(17087u, 0u, 13485u), vec3<u32>(var_0.d.a, u_input.d, u_input.d) ^ u_input.c)) % vec3<u32>(32u)), vec3<i32>(var_2, -15256i, max(abs(var_4.c.d.x), 0i)) << (~abs(abs(vec3<u32>(56803u, var_4.b.a, var_0.d.a))) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, ~var_4.b.a, ~u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.a, var_0.d.a, var_0.d.a, 48537u), vec4<u32>(110222u, var_0.c.a, var_0.c.a, var_4.b.a))), select(max(vec4<u32>(var_4.b.a, u_input.d, u_input.d, var_0.b.a), vec4<u32>(u_input.d, 20934u, 85934u, 1u)), vec4<u32>(21669u, var_0.c.a, 33417u, 86962u), var_1), vec4<u32>(4294967295u, 1u, u_input.d, 4294967295u))), vec2<i32>(_wgslsmith_mod_i32(var_4.d.d.x ^ 0i, var_2 | var_2), ~select(34202i, var_4.d.d.x, false)) << (vec2<u32>(4294967295u, firstTrailingBit(_wgslsmith_clamp_u32(35120u, 4294967295u, 11469u))) % vec2<u32>(32u)), _wgslsmith_dot_vec2_i32(firstTrailingBit(var_4.d.d.zz), vec2<i32>(reverseBits(var_4.b.d.x), max(select(var_2, -37457i, var_3.x), -1i))));
}

