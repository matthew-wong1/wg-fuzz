struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec3<i32> {
    global0 = Struct_1(vec3<i32>(-29589i, -3837i << (1u % 32u), abs(~(-38242i & global0.b.x))), -select(~global0.b, vec4<i32>(global0.b.x, global0.b.x, 45402i, global0.b.x), true) ^ ~vec4<i32>(~global0.a.x, _wgslsmith_dot_vec2_i32(global0.b.wx, vec2<i32>(-3302i, -1i)), global0.b.x, ~global0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -555f), -370f, true)), 271f)), -1000f));
    let var_0 = Struct_1(-vec3<i32>(-1i, select(global0.b.x, ~(-8825i), any(vec2<bool>(false, true))), ~0i), -global0.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(min(global0.c, global0.c))), _wgslsmith_div_f32(-508f, _wgslsmith_f_op_f32(-global0.c)))));
    global0 = Struct_1(var_0.b.zxw, ~var_0.b, -1556f);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c)) - global0.c) - _wgslsmith_f_op_f32(-136f - _wgslsmith_f_op_f32(-324f * -124f))))));
    global0 = Struct_1(~max(global0.a, -(var_0.a | global0.a)), vec4<i32>(var_0.b.x, var_0.a.x, var_0.b.x, max(i32(-1i) * -23812i, abs(0i))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), 183f))));
    return countOneBits(-global0.a);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(325f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - global0.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1337f, global0.c) - 1444f), true || all(vec3<bool>(true, false, false))))) >= 2073f;
    global0 = Struct_1(vec3<i32>(-28625i, ~18784i, -global0.a.x), reverseBits(global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1995f + global0.c)));
    var var_2 = Struct_1(~(~func_3()), -reverseBits(vec4<i32>(57401i ^ global0.a.x, countOneBits(global0.b.x), countOneBits(global0.b.x), 158i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c * -1018f))))));
    let var_3 = any(select(select(vec3<bool>(true, any(vec3<bool>(false, var_1, false)), var_1), vec3<bool>(any(vec4<bool>(var_1, var_1, false, true)), u_input.a <= 13487u, all(vec3<bool>(var_1, var_1, var_1))), !select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, false, true), vec3<bool>(true, var_1, var_1))), select(select(select(vec3<bool>(false, true, var_1), vec3<bool>(false, true, false), vec3<bool>(false, var_1, var_1)), !vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, false, false)), vec3<bool>(!var_1, true | var_1, !var_1), var_1), !var_1));
    return Struct_1(var_2.b.wxw, -min(var_2.b, global0.b), global0.c);
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = func_2();
    var var_1 = arg_0.x;
    global0 = arg_2;
    var_1 = arg_0.x;
    return func_2();
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<bool>) -> i32 {
    var var_0 = func_4(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a, u_input.a, ~4294967295u), reverseBits(~vec3<u32>(u_input.a, 0u, u_input.a))), _wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(62184u, u_input.a, 57634u)), vec3<u32>(_wgslsmith_add_u32(82410u, u_input.a), ~u_input.a, ~u_input.a))), 1i, func_2(), select(!vec4<bool>(!arg_3.x, arg_3.x, true, any(arg_3)), !vec4<bool>(false, any(vec2<bool>(false, arg_3.x)), any(vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x)), true), arg_3.x));
    var var_1 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(0u), u_input.a), _wgslsmith_sub_vec2_u32(~firstTrailingBit(vec2<u32>(8402u, u_input.a)), countOneBits(vec2<u32>(u_input.a, u_input.a))), ~(~vec2<u32>(u_input.a, u_input.a) ^ ~vec2<u32>(79848u, 16289u))), vec2<u32>(firstLeadingBit(1u), 4294967295u));
    var var_2 = (firstLeadingBit(~vec3<u32>(9884u, 1u, 1u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, u_input.a, var_1.x), vec3<u32>(1u, 1u, 2860u)) % vec3<u32>(32u))) << (vec3<u32>(u_input.a, abs(3849u) ^ (u_input.a << (u_input.a % 32u)), 49410u) % vec3<u32>(32u))) >> (~(~firstLeadingBit(~vec3<u32>(var_1.x, 1u, u_input.a))) % vec3<u32>(32u));
    let var_3 = select(_wgslsmith_f_op_f32(trunc(661f)) >= 694f, any(select(vec2<bool>(true, var_2.x < u_input.a), select(arg_3.zy, vec2<bool>(true, arg_3.x), 1i >= global0.a.x), true)), !(_wgslsmith_f_op_f32(arg_2.x * arg_2.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(476f)))));
    var var_4 = ~var_0.a.x;
    return _wgslsmith_div_i32(~arg_1, arg_1) << (firstTrailingBit(var_2.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec3<i32>(38674i, global0.b.x, global0.b.x), ~vec4<i32>(func_1(Struct_1(vec3<i32>(0i, 31700i, 0i), vec4<i32>(-1i, global0.b.x, -10338i, global0.a.x), -408f), _wgslsmith_dot_vec2_i32(global0.b.yw, vec2<i32>(global0.a.x, 26236i)), vec4<f32>(-184f, global0.c, -443f, global0.c), vec3<bool>(true, true, true)), _wgslsmith_div_i32(-global0.a.x, -global0.b.x), -global0.b.x, _wgslsmith_dot_vec2_i32(global0.b.yx, vec2<i32>(-1i, 16668i)) & 1i), global0.c);
    var var_0 = Struct_1(select(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, global0.a.x, -2147483647i) & vec3<i32>(global0.a.x, global0.b.x, global0.a.x), global0.b.xyz), global0.b.zzw), vec3<i32>(global0.a.x, global0.b.x, i32(-1i) * -2147483647i), vec3<bool>(any(vec2<bool>(true, false)) | true, false, true)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -807f)));
    var var_1 = 6119i;
    var var_2 = func_4(vec3<u32>(abs(reverseBits(1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(0u, 4294967295u), vec2<u32>(15429u, u_input.a), true), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(21195u, 570u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(65896u, u_input.a), vec2<u32>(33969u, u_input.a) | vec2<u32>(u_input.a, 4620u))), abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), select(35600u, 73691u, true)))), func_1(func_4(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(35597u, u_input.a, u_input.a)) ^ (vec3<u32>(48469u, 4294967295u, u_input.a) | vec3<u32>(u_input.a, u_input.a, u_input.a)), 33689i, func_4(vec3<u32>(u_input.a, 4294967295u, u_input.a) & vec3<u32>(11474u, 70658u, u_input.a), var_0.b.x & global0.b.x, Struct_1(global0.a, vec4<i32>(-34533i, global0.a.x, 1i, -1i), global0.c), vec4<bool>(true, true, false, true)), vec4<bool>(all(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false)), true)), 61700i >> (_wgslsmith_add_u32(u_input.a, ~u_input.a) % 32u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c, 686f, -772f, -948f), vec4<f32>(var_0.c, global0.c, -1646f, 514f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-872f, 1586f, global0.c, global0.c))), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true))))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, false, true, true)), false, -66033i != var_0.b.x), true)), func_2(), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, true, false, false)), true, any(vec2<bool>(false, false))), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    var var_3 = var_0.a.x;
    global0 = Struct_1(vec3<i32>(var_0.b.x, 0i, 0i), vec4<i32>(_wgslsmith_sub_i32(func_4(~vec3<u32>(4294967295u, 0u, 6448u), func_2().b.x, func_4(vec3<u32>(24588u, 0u, u_input.a), -13169i, Struct_1(vec3<i32>(var_2.a.x, var_2.b.x, -1i), vec4<i32>(-1i, 14857i, -2147483647i, -32536i), -917f), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))).a.x, -2147483647i), global0.a.x, _wgslsmith_div_i32(abs(var_2.a.x), global0.a.x), ~(-var_0.a.x)), _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(var_0.c - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(global0.c + 1057f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(func_4(~vec3<u32>(37482u, u_input.a, u_input.a), -_wgslsmith_sub_i32(global0.b.x, var_0.b.x), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(9744i, global0.a.x, var_2.b.x), global0.a), -vec4<i32>(var_0.a.x, global0.a.x, var_2.b.x, var_2.a.x), _wgslsmith_f_op_f32(-var_0.c)), vec4<bool>(false, true, true, true)).c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f), var_0.c) * _wgslsmith_f_op_f32(round(func_2().c))), global0.c), _wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(0u), firstLeadingBit(~u_input.a)), ~firstLeadingBit(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 4294967295u))), vec2<f32>(-411f, var_0.c));
}

