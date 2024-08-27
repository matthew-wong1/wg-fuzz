struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = _wgslsmith_mod_vec3_u32(arg_1.a.zyw, min(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1304u, arg_1.a.x), arg_1.a.zwx) & _wgslsmith_mult_vec3_u32(arg_0.a.wwz, arg_0.a.wwz)), _wgslsmith_mult_vec3_u32(arg_1.a.wwz, reverseBits(arg_0.a.xyw))));
    let var_1 = u_input.a;
    let var_2 = Struct_2(Struct_1(vec2<i32>(var_1, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-34317i, 14800i), u_input.d | -1i)), -1000f, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), arg_1.a.x > 1u), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), true), vec3<bool>(all(vec3<bool>(false, false, false)), false, all(vec4<bool>(false, true, true, false)))), 1248f, arg_0.a), vec2<f32>(469f, _wgslsmith_f_op_f32(-1428f * _wgslsmith_f_op_f32(-810f - 1059f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(341f, 298f, 464f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1147f, -1356f, -141f), vec3<f32>(-596f, -1496f, -985f))))))), Struct_1(-vec2<i32>(firstLeadingBit(6424i), var_1), _wgslsmith_div_f32(-262f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-318f, 1900f) - _wgslsmith_f_op_f32(ceil(-1133f)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), 257f, ~arg_0.a), arg_0.a);
    let var_3 = all(!select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, var_2.d.c.x), vec2<bool>(var_2.d.c.x, var_2.a.c.x), var_2.d.c.yz), select(vec2<bool>(true, var_2.a.c.x), vec2<bool>(false, var_2.a.c.x), select(var_2.d.c.zz, vec2<bool>(var_2.a.c.x, true), var_2.a.c.x))));
    var var_4 = arg_0;
    return vec2<i32>(-1i, u_input.a);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(func_3(Struct_3(reverseBits(vec4<u32>(u_input.c, 0u, 1u, 0u))), Struct_3(vec4<u32>(7336u, u_input.c, u_input.b, 12106u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2626f)))), select(vec3<bool>(true, true, u_input.a != u_input.d), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1738f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_div_f32(-766f, _wgslsmith_div_f32(417f, 892f))), _wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.b, 1u, 1u, 3313u)), vec4<u32>(4294967295u, 17354u, 0u, ~70015u))), vec2<f32>(-631f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-598f, -943f, false)), _wgslsmith_f_op_f32(select(-1000f, 1176f, false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-939f, -1600f, -482f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1825f, 670f, -653f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-105f, 269f, 930f)))))), Struct_1(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(u_input.a, u_input.a)) & -vec2<i32>(u_input.a, u_input.d), min(vec2<i32>(-1i, u_input.a) & vec2<i32>(u_input.d, -42528i), _wgslsmith_div_vec2_i32(vec2<i32>(-11763i, u_input.d), vec2<i32>(1i, u_input.a)))), _wgslsmith_f_op_f32(round(687f)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), -707f, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c), vec2<u32>(u_input.b, 35429u) | vec2<u32>(u_input.b, u_input.c)), u_input.c ^ 54874u, firstLeadingBit(70760u), select(_wgslsmith_mod_u32(12044u, 4294967295u), 1u, true))), abs(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, u_input.b, 1u, 4294967295u), ~select(vec4<u32>(u_input.b, 1u, 1u, u_input.c), vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.c), vec4<bool>(true, true, true, true)))));
    let var_1 = ~(_wgslsmith_sub_u32(abs(87048u) >> (~u_input.b % 32u), ~select(0u, 1u, false)) ^ (countOneBits(var_0.e.x << (var_0.a.e.x % 32u)) << (18577u % 32u)));
    var var_2 = var_0.a;
    var_2 = var_0.d;
    let var_3 = var_0.d;
    return select(var_3.c.xy, vec2<bool>(true, !any(vec4<bool>(var_0.a.c.x, true, true, var_0.d.c.x))), true);
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = ~_wgslsmith_mult_i32(24514i, -select(~0i, 1i, true));
    let var_1 = Struct_3(vec4<u32>(min(arg_1.a.x, _wgslsmith_div_u32(arg_1.a.x, arg_0)), 26178u, arg_1.a.x | ~26560u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 6015u) << (arg_2.e.zw % vec2<u32>(32u)), vec2<u32>(1u, u_input.b))) & ~firstLeadingBit(vec4<u32>(7581u, arg_2.e.x, 4294967295u, arg_2.e.x)));
    var_0 = -arg_2.a.x;
    var_0 = ~1i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.b, _wgslsmith_div_f32(-827f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-109f, -942f))), true)) - arg_2.b);
    return select(func_2(), func_2(), arg_2.c.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(!func_1(9660u, Struct_3(vec4<u32>(u_input.b, 42729u, 52783u, u_input.c)), Struct_1(vec2<i32>(-17954i, u_input.a), -877f, vec3<bool>(true, true, true), -1000f, vec4<u32>(15905u, 33686u, u_input.b, 4294967295u)))));
    let var_1 = select(vec4<i32>(1i, u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, -2147483647i), abs(~vec2<i32>(1i, u_input.d)))), ~(~max(vec4<i32>(-2147483647i, u_input.d, -2147483647i, u_input.d), vec4<i32>(u_input.a, 0i, 1i, u_input.d))) >> (reverseBits(select(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.c), ~vec4<u32>(u_input.b, u_input.c, 10235u, 90271u), var_0)) % vec4<u32>(32u)), !vec4<bool>(func_2().x, !var_0 & var_0, any(!vec2<bool>(var_0, true)), true & var_0));
    let var_2 = Struct_3(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.c, 1u, 9904u) << (vec4<u32>(u_input.b, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.c, 0u, u_input.b, u_input.c)))));
    let var_3 = Struct_1(var_1.yz, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2418f, -862f)))))), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(var_0, false, true), vec3<bool>(var_0, var_0, var_0)), vec3<bool>(true, var_0, var_0), true), select(!vec3<bool>(false, var_0, var_0), !vec3<bool>(var_0, false, var_0), false), select(!vec3<bool>(false, var_0, true), select(vec3<bool>(var_0, true, true), vec3<bool>(false, var_0, false), vec3<bool>(true, true, var_0)), var_0)), vec3<bool>(true, ~var_1.x == _wgslsmith_sub_i32(var_1.x, var_1.x), any(func_2())), !vec3<bool>(var_0 && false, any(vec3<bool>(var_0, var_0, var_0)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(167f))), ~var_2.a & ~(~(vec4<u32>(4294967295u, 38640u, 0u, u_input.c) | vec4<u32>(13847u, var_2.a.x, var_2.a.x, var_2.a.x))));
    let var_4 = Struct_2(Struct_1(vec2<i32>(abs(-62626i), -_wgslsmith_mult_i32(37788i, -30873i)), var_3.d, var_3.c, 1000f, vec4<u32>(var_2.a.x, ~4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a.x, var_3.e.x), vec2<u32>(var_2.a.x, 26435u)), select(var_3.e.xz, vec2<u32>(u_input.c, var_2.a.x), true)), ~u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(sign(var_3.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.b)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.b, 936f, -438f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.d, 811f, 1165f), vec3<f32>(-303f, var_3.b, -312f), false)), vec3<f32>(-1000f, var_3.b, 1212f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d, var_3.b, var_3.b) + vec3<f32>(648f, var_3.b, var_3.b)), vec3<f32>(-955f, var_3.b, -1779f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.b, -501f, -626f), vec3<f32>(var_3.b, var_3.b, var_3.d))))))), Struct_1(_wgslsmith_sub_vec2_i32(var_1.xx, vec2<i32>(_wgslsmith_div_i32(3202i, -32169i), -u_input.a)), -2292f, var_3.c, -884f, max(var_2.a, vec4<u32>(0u, 34036u, u_input.b, 9937u)) >> (firstTrailingBit(~var_2.a) % vec4<u32>(32u))), max(var_2.a, _wgslsmith_sub_vec4_u32(~(~var_3.e), min(vec4<u32>(1u, 35024u, var_2.a.x, u_input.c), ~var_3.e))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mod_i32(var_1.x, ~(-u_input.a)), firstLeadingBit(-var_3.a.x) & -21044i, -_wgslsmith_div_i32(-2147483647i, -46192i), u_input.a), reverseBits(-(vec3<i32>(-24631i, var_1.x, -2147483647i) >> (vec3<u32>(0u, u_input.b, var_4.e.x) % vec3<u32>(32u)))));
}

