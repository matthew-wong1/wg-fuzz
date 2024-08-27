struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true), true, vec2<u32>(0u, 4294967295u), vec2<bool>(true, true));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = arg_1;
    let var_1 = select(max(_wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(u_input.c), u_input.c >> (4294967295u % 32u), min(u_input.c, u_input.c), 5226i), vec4<i32>(0i, _wgslsmith_sub_i32(u_input.c, -1i), 1i, 1i >> (1u % 32u))), vec4<i32>(~firstLeadingBit(u_input.c), min(u_input.c, 2147483647i), _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, 1i), reverseBits(-2147483647i)), u_input.c)), _wgslsmith_div_vec4_i32(max(min(abs(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c) ^ vec4<i32>(0i, 20017i, -17510i, u_input.c)), _wgslsmith_sub_vec4_i32(vec4<i32>(-29748i, 15857i, 0i, u_input.c), reverseBits(vec4<i32>(u_input.c, u_input.c, -13983i, -15156i)))), vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.c), vec3<i32>(-865i, u_input.c, -1i)), u_input.c, 6848i, 8452i)), !select(vec4<bool>(arg_1.d.x, all(vec3<bool>(true, arg_1.a.x, arg_1.b)), true, false), select(!vec4<bool>(var_0.a.x, var_0.d.x, global0.b, true), vec4<bool>(false, var_0.a.x, var_0.b, var_0.a.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(var_0.b, true, global0.d.x, var_0.a.x), !vec4<bool>(true, true, arg_1.a.x, false), global0.c.x != global0.c.x)));
    var var_2 = !var_0.a.zz;
    global0 = Struct_1(vec3<bool>(true, select(all(global0.a.xx) && all(vec3<bool>(var_0.d.x, false, true)), var_0.b, arg_1.a.x), arg_0 > 4294967295u), !(arg_0 > u_input.a.x), select(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(16164u, 2711u), 4294967295u ^ arg_1.c.x), u_input.b.xy), ~vec2<u32>(1u, arg_1.c.x), any(vec4<bool>(26887i > u_input.c, true, true, true))), !select(vec2<bool>(var_0.a.x, false), select(!var_0.d, !arg_1.d, all(var_0.a)), global0.b));
    let var_3 = arg_0;
    return vec2<bool>(all(!(!select(vec4<bool>(global0.a.x, var_0.a.x, true, true), vec4<bool>(arg_1.a.x, var_0.d.x, false, var_2.x), vec4<bool>(false, true, arg_1.d.x, var_2.x)))), false);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = arg_1;
    let var_1 = 23394u;
    global0 = Struct_1(global0.a, !any(select(select(vec2<bool>(true, arg_1.b), arg_1.d, false), vec2<bool>(arg_1.a.x, var_0.a.x), all(var_0.a.yx))), select(vec2<u32>(0u, min(1u, 1u)), _wgslsmith_clamp_vec2_u32(firstTrailingBit(countOneBits(u_input.a.zz)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.c.x, 16210u), global0.c), vec2<u32>(20834u, var_1)), _wgslsmith_add_vec2_u32(min(arg_1.c, global0.c), global0.c)), arg_1.a.yx), select(func_3(1u, arg_1), select(select(func_3(u_input.a.x, arg_1), vec2<bool>(false, false), global0.a.zx), vec2<bool>(true, true), true), select(select(select(vec2<bool>(global0.b, true), global0.d, vec2<bool>(false, global0.b)), !vec2<bool>(var_0.a.x, arg_1.b), func_3(4647u, Struct_1(vec3<bool>(false, true, global0.b), false, global0.c, vec2<bool>(true, false)))), vec2<bool>(arg_1.a.x, all(vec2<bool>(true, true))), var_0.b)));
    let var_2 = vec4<f32>(722f, 159f, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1538f));
    global0 = Struct_1(vec3<bool>(!any(vec4<bool>(false, global0.d.x, false, var_0.b)), arg_0 != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-298f * var_2.x))), false), !var_0.d.x, ~var_0.c, select(select(select(select(vec2<bool>(true, true), var_0.d, true), !vec2<bool>(true, global0.a.x), true), var_0.a.xz, select(global0.a.zz, !vec2<bool>(arg_1.d.x, arg_1.a.x), var_0.a.x)), !(!var_0.a.yz), arg_1.a.x));
    return global0.b;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.c;
    let var_1 = vec2<u32>(arg_0.c.x, 6073u);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(-577f)), _wgslsmith_f_op_f32(-549f * 1566f), 2675f, _wgslsmith_f_op_f32(floor(-1575f))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1772f, 1263f), _wgslsmith_f_op_f32(f32(-1f) * -631f), func_2(-1666f, Struct_1(vec3<bool>(true, false, false), arg_0.d.x, global0.c, arg_0.a.zy)))) - _wgslsmith_f_op_f32(f32(-1f) * -219f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -686f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(501f - 478f) + -472f)), -240f, _wgslsmith_f_op_f32(trunc(464f))), vec4<bool>(true, true, global0.d.x, true)));
    return arg_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    global0 = func_4(Struct_1(vec3<bool>(true, !(u_input.b.x < 0u), func_2(_wgslsmith_f_op_f32(163f + arg_2), Struct_1(vec3<bool>(false, true, global0.b), global0.b, vec2<u32>(1u, u_input.a.x), arg_0.xy))), true, global0.c >> (u_input.b.wx % vec2<u32>(32u)), select(select(vec2<bool>(false, true), vec2<bool>(global0.a.x, arg_0.x), arg_0.x & arg_0.x), func_3(global0.c.x, Struct_1(vec3<bool>(global0.b, true, global0.b), false, global0.c, global0.a.xz)), arg_0.xy)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-559f * -647f) * _wgslsmith_f_op_f32(trunc(arg_2))) * arg_1.x), arg_1.x, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1176f, arg_1.x))))));
    global0 = func_4(Struct_1(global0.a, false, u_input.a.xy, global0.a.xx));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1038f))), arg_2);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x))), 1150f)), _wgslsmith_f_op_f32(abs(-317f)));
    return Struct_1(arg_0, true, vec2<u32>(~(~(~global0.c.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, 30978u), global0.c.x), vec2<u32>(~9104u, ~23554u))), vec2<bool>(!arg_0.x, global0.a.x));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -1447f;
    var var_1 = firstTrailingBit(global0.c.x);
    var_1 = u_input.b.x;
    global0 = arg_1;
    global0 = arg_2;
    return func_4(func_1(vec3<bool>(false, _wgslsmith_mult_u32(0u, 4294967295u) > global0.c.x, any(arg_2.a)), vec2<f32>(var_0, -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-946f)) - _wgslsmith_f_op_f32(min(var_0, var_0)))));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_2.a, arg_0.a.x, vec2<u32>(arg_2.c.x | (u_input.b.x & 4294967295u), 4294967295u | arg_2.c.x), !(!(!arg_0.a.zx)));
    global0 = func_1(func_4(arg_0).a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(462f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(562f - 1183f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-869f + 490f)))));
    var var_1 = 228f;
    let var_2 = firstTrailingBit(min(_wgslsmith_mod_vec3_i32(firstTrailingBit(~vec3<i32>(94096i, -1i, u_input.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(38633i, 0i, -42539i), _wgslsmith_mod_vec3_i32(vec3<i32>(26160i, -2147483647i, u_input.c), vec3<i32>(u_input.c, 0i, -35681i)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c)))), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(47702i, -19876i, u_input.c) << (u_input.b.wyx % vec3<u32>(32u)), ~vec3<i32>(u_input.c, u_input.c, 42860i)))));
    var var_3 = Struct_1(vec3<bool>(true, true, -u_input.c <= _wgslsmith_mod_i32(u_input.c, var_2.x)), true, vec2<u32>(32585u, ~u_input.b.x), vec2<bool>(!(!(!arg_2.b)), var_0.a.x));
    return func_4(Struct_1(!var_3.a, false, _wgslsmith_clamp_vec2_u32(abs(arg_0.c), countOneBits(vec2<u32>(global0.c.x, var_3.c.x)), u_input.a.zz), vec2<bool>(true, func_5(firstLeadingBit(1u), func_4(Struct_1(global0.a, true, global0.c, vec2<bool>(arg_2.d.x, arg_0.d.x))), arg_0).b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(abs(~global0.c.x), func_1(select(global0.a, !global0.a, global0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1150f, 460f) + vec2<f32>(-194f, -645f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1702f, 1000f) + _wgslsmith_f_op_f32(abs(-992f)))), func_4(Struct_1(func_4(Struct_1(global0.a, true, vec2<u32>(global0.c.x, global0.c.x), global0.a.xy)).a, all(global0.d), global0.c << (vec2<u32>(36945u, u_input.a.x) % vec2<u32>(32u)), select(global0.d, vec2<bool>(global0.a.x, global0.a.x), global0.d)))), true, func_4(func_5(_wgslsmith_add_u32(61674u, global0.c.x), func_4(Struct_1(global0.a, true, vec2<u32>(global0.c.x, global0.c.x), global0.a.yz)), func_1(global0.a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1485f, 1000f), vec2<f32>(1018f, -1379f))), _wgslsmith_div_f32(1064f, 1383f)))));
    var var_0 = vec2<bool>(all(func_3(_wgslsmith_mult_u32(global0.c.x, 0u), func_1(func_1(vec3<bool>(false, false, global0.a.x), vec2<f32>(1001f, -455f), 1000f).a, vec2<f32>(-1042f, -655f), _wgslsmith_f_op_f32(-1000f + -512f)))), true);
    global0 = Struct_1(!(!func_5(u_input.b.x & 13067u, func_6(Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x), true, vec2<u32>(12739u, global0.c.x), vec2<bool>(true, global0.d.x)), true, Struct_1(global0.a, true, u_input.b.wx, vec2<bool>(true, true))), Struct_1(vec3<bool>(true, var_0.x, var_0.x), global0.d.x, u_input.a.xx, vec2<bool>(global0.d.x, global0.d.x))).a), global0.d.x, (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u) ^ vec2<u32>(4294967295u, global0.c.x), vec2<u32>(0u, global0.c.x)) << (u_input.a.wz % vec2<u32>(32u))) ^ vec2<u32>(11114u, min(~global0.c.x, global0.c.x)), vec2<bool>(global0.b, global0.d.x));
    var_0 = vec2<bool>(true, !(!all(vec3<bool>(true, global0.a.x, var_0.x)) || true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1887f)))))), _wgslsmith_f_op_f32(select(-163f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2404f - 1926f))), !(false != global0.a.x)))), u_input.b, -427f, -2060f);
}

