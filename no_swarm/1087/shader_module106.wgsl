struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    let var_0 = Struct_1(-abs(u_input.a << (0u % 32u)) >= u_input.a, -1i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1078f, -1124f) - arg_0.zw), vec2<f32>(-580f, _wgslsmith_f_op_f32(901f * arg_0.x))))), 1u, ~_wgslsmith_mod_vec2_u32(~firstLeadingBit(vec2<u32>(0u, 1600u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 2748u), vec2<u32>(1u, 2887u))));
    var var_1 = var_0;
    var var_2 = var_1.b;
    var_1 = var_0;
    var var_3 = var_1.a;
    return -var_1.b > _wgslsmith_clamp_i32(u_input.a, 2147483647i, 6358i);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    let var_1 = firstTrailingBit(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u) >> (abs(arg_1.xz) % vec2<u32>(32u)), select(firstTrailingBit(var_0.e), var_0.e, vec2<bool>(false, true)))));
    var var_2 = arg_1.x;
    var var_3 = Struct_1(!(!var_0.a), u_input.a, vec2<f32>(745f, 263f), var_0.d, var_1);
    var var_4 = !select(vec3<bool>(arg_2.a, !any(vec2<bool>(false, true)), false), vec3<bool>(arg_2.c.x >= arg_2.c.x, any(vec3<bool>(arg_2.a, false, false)), all(vec3<bool>(true, true, true))), !var_0.a);
    return 1071f;
}

fn func_2() -> Struct_1 {
    var var_0 = ~firstTrailingBit(~(~(~vec3<u32>(1u, 0u, 64584u))));
    let var_1 = Struct_1(!any(vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), any(vec4<bool>(true, true, false, false)))), firstLeadingBit(u_input.a), vec2<f32>(_wgslsmith_f_op_f32(func_4(~(~var_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<u32>(var_0.x, 25893u, 66891u)) | ~vec3<u32>(var_0.x, 72062u, var_0.x), Struct_1(func_3(vec4<f32>(1339f, -135f, 1377f, -807f)), abs(2147483647i), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(433f, -1012f), vec2<f32>(484f, 169f))), var_0.x, var_0.zx))), 589f), var_0.x, firstLeadingBit(var_0.xz));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1306f, var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(636f, _wgslsmith_f_op_f32(abs(var_1.c.x)), 763f)));
    var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(32469u, 63409u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e.x ^ var_0.x, abs(var_0.x)), countOneBits(var_0.yy))), ((firstLeadingBit(vec3<u32>(0u, var_1.e.x, var_0.x)) & vec3<u32>(var_0.x, var_1.e.x, var_0.x)) >> ((_wgslsmith_add_vec3_u32(vec3<u32>(61974u, var_0.x, 0u), vec3<u32>(var_1.d, var_1.d, 70433u)) | firstLeadingBit(vec3<u32>(4294967295u, 44657u, 27171u))) % vec3<u32>(32u))) >> (abs(min(_wgslsmith_mult_vec3_u32(vec3<u32>(18067u, var_0.x, 12716u), vec3<u32>(var_1.d, var_0.x, var_0.x)), firstLeadingBit(vec3<u32>(28191u, var_1.d, 6700u)))) % vec3<u32>(32u)));
    let var_3 = Struct_1(true, -min((u_input.a ^ u_input.a) << (var_0.x % 32u), -(i32(-1i) * -1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.c + vec2<f32>(var_2.x, var_2.x)), vec2<f32>(-1205f, -912f), var_1.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.yx + _wgslsmith_f_op_vec2_f32(exp2(var_1.c))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1164f, var_1.c.x), var_2.xz)), _wgslsmith_f_op_vec2_f32(sign(var_1.c)), var_1.a)))), var_0.x, reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 43366u), vec2<u32>(var_0.x, 18871u))) & select(reverseBits(countOneBits(var_1.e)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, var_1.e.x), vec3<u32>(var_0.x, 31699u, var_0.x)), ~4294967295u), !select(vec2<bool>(false, var_1.a), vec2<bool>(false, true), true)));
    return Struct_1(false, firstLeadingBit(_wgslsmith_dot_vec3_i32(abs(firstTrailingBit(vec3<i32>(var_3.b, -1i, -2147483647i))), _wgslsmith_add_vec3_i32(~vec3<i32>(-11723i, var_1.b, u_input.a), ~vec3<i32>(var_3.b, var_3.b, 2147483647i)))), var_3.c, 0u, ~_wgslsmith_add_vec2_u32(firstTrailingBit(var_1.e), var_1.e));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> vec2<f32> {
    let var_0 = arg_2 | _wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~arg_0, abs(8473u)), ~(~vec3<u32>(0u, arg_0, arg_2.x) << ((vec3<u32>(46716u, arg_1.e.x, arg_2.x) ^ arg_2) % vec3<u32>(32u))));
    var var_1 = func_2();
    var var_2 = var_1.b;
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-997f, _wgslsmith_div_f32(-186f, var_1.c.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1062f, var_1.c.x), vec2<f32>(arg_1.c.x, 1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, arg_1.c.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, arg_1.c.x) * vec2<f32>(var_1.c.x, arg_1.c.x)) * arg_1.c))))));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = -340f;
    var_0 = -1701f;
    var var_1 = !select(vec4<bool>(!arg_0.a, false, !(true | arg_1), true), select(!vec4<bool>(false, false, arg_1, arg_3.x), vec4<bool>(true, true, arg_0.a && arg_3.x, any(arg_3)), !vec4<bool>(arg_0.a, true, false, arg_1)), vec4<bool>(any(!vec4<bool>(arg_3.x, arg_3.x, false, false)), any(arg_3), !all(vec4<bool>(arg_0.a, arg_1, true, true)), !func_2().a));
    let var_2 = Struct_1(true, -_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(-34996i >> (arg_0.e.x % 32u), u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1087f), _wgslsmith_div_f32(arg_0.c.x, arg_2.x))) + vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -942f))), 10715u >> (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_0.d, arg_0.e.x, arg_0.e.x)), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_0.e.x, arg_0.d), vec3<u32>(arg_0.d, 10433u, 11600u))) % 32u), vec2<u32>(4294967295u, 0u));
    let var_3 = _wgslsmith_f_op_f32(-1505f - var_2.c.x);
    return _wgslsmith_div_vec3_u32(~(~(~vec3<u32>(arg_0.d, arg_0.e.x, 76838u)) | ~(vec3<u32>(arg_0.d, 0u, 58201u) ^ vec3<u32>(1u, 97364u, 74939u))), vec3<u32>(func_2().d, ~(arg_0.e.x ^ min(15129u, var_2.d)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, 491u, 26422u)), vec3<u32>(0u, 23978u, var_2.d) >> (vec3<u32>(4294967295u, 46389u, 0u) % vec3<u32>(32u))), select(~vec3<u32>(4294967295u, var_2.d, 8391u), ~vec3<u32>(arg_0.e.x, 84987u, 4294967295u), arg_3.x))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = countOneBits((firstTrailingBit(~vec3<u32>(arg_3.e.x, arg_1.d, arg_3.e.x)) & vec3<u32>(14646u, abs(arg_3.e.x), 23249u)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.d, 4294967295u, 36149u) & _wgslsmith_div_vec3_u32(vec3<u32>(arg_3.d, arg_3.e.x, 1u), vec3<u32>(arg_2.e.x, arg_2.e.x, 16032u)), ~(vec3<u32>(arg_1.e.x, arg_3.d, arg_2.e.x) & vec3<u32>(5849u, 0u, 4294967295u)), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_3.d, arg_2.e.x, arg_3.d), vec3<u32>(arg_2.e.x, arg_2.e.x, arg_1.d))) % vec3<u32>(32u)));
    var_0 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_3.e.x, ~44561u ^ var_0.x), ~(1u ^ arg_2.d) >> (_wgslsmith_mod_u32(select(0u, arg_2.e.x, false), ~arg_2.e.x) % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_3.d, 2644u, 85658u), vec3<u32>(1u, var_0.x, max(var_0.x, 1u))), abs(vec3<u32>(arg_3.e.x, ~37951u, 4575u))), 1u);
    var_0 = func_6(Struct_1(arg_3.a, ~_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(-1i, arg_2.b, arg_3.b, arg_0.x)), _wgslsmith_f_op_vec2_f32(func_5(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_3.d), vec2<u32>(18243u, arg_1.d)), func_2(), firstTrailingBit(vec3<u32>(4294967295u, var_0.x, arg_1.d) & vec3<u32>(arg_1.e.x, arg_2.e.x, 1u)), arg_3.a)), 0u, vec2<u32>(~_wgslsmith_clamp_u32(var_0.x, 125697u, var_0.x), min(countOneBits(arg_3.e.x), arg_2.d))), true, vec2<f32>(arg_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.c.x)), _wgslsmith_f_op_f32(-arg_3.c.x)) - _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(floor(584f))))), !select(!(!vec3<bool>(arg_3.a, arg_2.a, true)), select(!vec3<bool>(arg_1.a, arg_2.a, true), !vec3<bool>(arg_1.a, true, false), select(vec3<bool>(false, arg_1.a, arg_2.a), vec3<bool>(false, true, arg_3.a), true)), true));
    var var_1 = vec3<i32>(-1i, arg_3.b, arg_1.b);
    var_0 = vec3<u32>(select(abs(~6121u), ~(~(~arg_3.d)), any(vec3<bool>(true, any(vec4<bool>(arg_2.a, true, arg_3.a, true)), arg_3.a))), firstLeadingBit(var_0.x), 1u);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec3<u32>(1u, 1u, 1u));
    var_0 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(32809u, 24601u, max(var_0.x, 0u)) >> (vec3<u32>(~76196u, 81607u, func_1(vec4<i32>(u_input.a, 0i, 0i, u_input.a), Struct_1(true, -5761i, vec2<f32>(-1568f, -153f), 1u, vec2<u32>(var_0.x, var_0.x)), Struct_1(true, -1i, vec2<f32>(1521f, -655f), var_0.x, vec2<u32>(var_0.x, var_0.x)), Struct_1(true, u_input.a, vec2<f32>(792f, -446f), 36702u, vec2<u32>(var_0.x, var_0.x)))) % vec3<u32>(32u)), max(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.x, 1u), vec3<u32>(23001u, 45044u, 81947u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(1u, 19724u, var_0.x))) & abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, 56023u), vec3<u32>(var_0.x, 71903u, 57123u))), ~vec3<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x), ~var_0.x, 1u));
    let var_1 = Struct_1(!(all(vec4<bool>(true, false, false, true)) || !any(vec4<bool>(false, true, true, true))), -2147483647i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1208f), -1000f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1613f, -1184f), vec2<f32>(-1162f, -796f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-791f, -1000f)), true))))), 4294967295u, vec2<u32>(countOneBits(abs(_wgslsmith_mod_u32(var_0.x, var_0.x))), var_0.x));
    var_0 = ~(~((~vec3<u32>(var_0.x, var_0.x, var_1.e.x) << (vec3<u32>(4294967295u, 42216u, var_0.x) % vec3<u32>(32u))) | ~(~vec3<u32>(var_0.x, 1u, 3792u))));
    let var_2 = 50677i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, ~var_1.e);
}

