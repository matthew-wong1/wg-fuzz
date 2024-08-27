struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> vec4<u32> {
    global0 = arg_0.e.b;
    return max(vec4<u32>(arg_0.b, u_input.a & 21574u, 52897u, 3630u), max(max(vec4<u32>(u_input.a, 1u, u_input.a, _wgslsmith_clamp_u32(1u, u_input.b, u_input.b)), vec4<u32>(2742u ^ arg_0.b, u_input.a, ~0u, arg_0.d.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 3406u, u_input.b, 4294967295u), vec4<u32>(0u, arg_0.d.x, 27226u, u_input.b)) >> (vec4<u32>(33674u, 63168u, arg_0.d.x, 9668u) % vec4<u32>(32u)), ~vec4<u32>(45692u, 32467u, arg_0.b, u_input.a))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec3<i32>) -> vec2<bool> {
    global0 = Struct_2(global0.d, global0.e, _wgslsmith_f_op_f32(-global0.c), global0.b, Struct_1(~(arg_0.x & -1i) >> (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, global0.e.a), _wgslsmith_sub_vec2_i32(arg_0.zz, vec2<i32>(arg_0.x, arg_2.x))) != global0.e.a));
    let var_0 = vec4<i32>(countOneBits(_wgslsmith_clamp_i32(global0.a.a, -(2147483647i >> (1u % 32u)), (arg_0.x >> (13650u % 32u)) | ~arg_1.x)), countOneBits(_wgslsmith_clamp_i32(-7021i, _wgslsmith_clamp_i32(arg_1.x, global0.d.a, -7807i), global0.a.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(18555u, u_input.b, u_input.a, u_input.b), vec4<u32>(42121u, 23987u, u_input.b, u_input.b)) % 32u)), -75722i, 1i);
    let var_1 = _wgslsmith_add_vec4_u32(abs(~vec4<u32>(reverseBits(20714u), firstLeadingBit(4294967295u), ~u_input.a, u_input.b << (19349u % 32u))), _wgslsmith_div_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.b, 43859u), func_3(Struct_4(Struct_3(vec2<f32>(359f, -950f), Struct_2(global0.a, global0.a, 645f, Struct_1(-2147483647i, global0.e.b), Struct_1(-2147483647i, true)), global0.d, vec3<f32>(-598f, 2761f, global0.c)), 4294967295u, vec3<f32>(-298f, global0.c, 823f), vec3<u32>(u_input.a, u_input.a, 70850u), Struct_3(vec2<f32>(1262f, global0.c), Struct_2(Struct_1(arg_0.x, false), Struct_1(0i, false), -806f, Struct_1(1i, global0.d.b), Struct_1(2147483647i, false)), global0.b, vec3<f32>(-853f, global0.c, -745f))), vec4<f32>(-701f, global0.c, global0.c, -566f)))), max(select(vec4<u32>(u_input.b, u_input.b, u_input.b, 31843u), vec4<u32>(4294967295u, u_input.b, u_input.b, 4294967295u), vec4<bool>(global0.a.b, global0.b.b, global0.a.b, false)) << (firstLeadingBit(vec4<u32>(4294967295u, u_input.b, u_input.a, u_input.b)) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)))));
    let var_2 = arg_2.yz;
    let var_3 = select(!(!vec4<bool>(global0.a.b && true, any(vec2<bool>(global0.a.b, true)), global0.e.b, !global0.a.b)), !select(vec4<bool>(!global0.d.b, !global0.e.b, true, any(vec3<bool>(global0.e.b, true, false))), vec4<bool>(true, global0.e.b, !global0.e.b, false), vec4<bool>(global0.e.b && true, false, all(vec3<bool>(true, global0.a.b, false)), true)), select(select(!select(vec4<bool>(global0.d.b, true, false, false), vec4<bool>(global0.d.b, true, global0.e.b, true), global0.e.b), !select(vec4<bool>(global0.e.b, true, global0.a.b, global0.d.b), vec4<bool>(true, global0.a.b, global0.a.b, false), true), any(!vec3<bool>(global0.b.b, global0.d.b, true))), vec4<bool>(true, global0.e.b, global0.a.b, true), vec4<bool>(!(arg_0.x < 25601i), true, var_1.x >= 8354u, true)));
    return !select(vec2<bool>(var_3.x, any(vec4<bool>(var_3.x, false, global0.b.b, true))), vec2<bool>(var_3.x, true), var_3.ww);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec4<i32>(global0.a.a, ~(-2147483647i) << (u_input.a % 32u), arg_0.d.a, 1i);
    let var_1 = Struct_1(~(_wgslsmith_add_i32(global0.a.a, _wgslsmith_add_i32(global0.b.a, 1i)) & ((var_0.x | 0i) ^ arg_0.a.a)), !all(vec2<bool>(!global0.a.b, true)));
    var var_2 = vec2<bool>(all(func_2(reverseBits(max(var_0, vec4<i32>(global0.e.a, -14390i, global0.e.a, var_0.x))), -var_0.wzy, var_0.wxz)), var_1.b);
    var var_3 = var_0.wwy;
    var var_4 = -237f;
    return global0.a;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> f32 {
    var var_0 = !vec4<bool>(func_1(Struct_2(global0.b, func_1(arg_2), _wgslsmith_div_f32(global0.c, -1549f), global0.d, Struct_1(arg_0.a, true))).b, arg_2.a.b, arg_2.d.b, global0.d.b);
    global0 = arg_2;
    let var_1 = firstTrailingBit(-_wgslsmith_mult_vec4_i32(-(vec4<i32>(-32989i, -1i, arg_0.a, 23885i) >> (vec4<u32>(42152u, u_input.b, 4294967295u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_2.b.a, arg_2.d.a, arg_2.b.a, -19169i), vec4<i32>(arg_2.e.a, arg_0.a, 5352i, arg_0.a), var_0.x), vec4<i32>(65792i, 21941i, arg_2.b.a, -35616i) << (vec4<u32>(1u, u_input.b, arg_1, 86846u) % vec4<u32>(32u)), -vec4<i32>(-1i, -4680i, arg_0.a, 2147483647i))));
    let var_2 = ~_wgslsmith_div_u32(u_input.b, u_input.a);
    let var_3 = abs(arg_1);
    return global0.c;
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<bool>) -> Struct_2 {
    global0 = Struct_2(func_1(Struct_2(global0.a, global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, -1000f, false))), Struct_1(_wgslsmith_mod_i32(2147483647i, -10215i), func_2(vec4<i32>(-15341i, 2820i, global0.a.a, 24506i), vec3<i32>(-1i, global0.e.a, 0i), vec3<i32>(global0.d.a, -42489i, -13696i)).x), global0.d)), global0.e, -2694f, global0.b, Struct_1(55303i, arg_2.x));
    let var_0 = vec4<i32>(-1i) * -firstLeadingBit(firstTrailingBit(vec4<i32>(global0.b.a, -57503i, 57279i, -20193i)));
    let var_1 = arg_2;
    global0 = Struct_2(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(i32(-1i) * -16408i, var_0.x << (42622u % 32u)), _wgslsmith_mult_i32(-2023i, global0.b.a), var_0.x), all(!vec4<bool>(false, false, true, var_1.x))), Struct_1(~1992i, arg_2.x), arg_0.x, Struct_1(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.xw), var_0.wz)), !all(var_1.xy)), Struct_1(countOneBits(_wgslsmith_mult_i32(global0.a.a ^ -433i, _wgslsmith_sub_i32(global0.b.a, global0.b.a))), false));
    global0 = Struct_2(func_1(Struct_2(global0.d, global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global0.d, u_input.b, Struct_2(Struct_1(-22956i, false), Struct_1(var_0.x, var_1.x), -955f, global0.e, Struct_1(var_0.x, var_1.x))))), global0.a, func_1(Struct_2(Struct_1(global0.b.a, true), global0.d, arg_0.x, global0.e, Struct_1(-75060i, var_1.x))))), func_1(Struct_2(Struct_1(_wgslsmith_sub_i32(-247i, 0i), true), global0.e, arg_1, Struct_1(abs(-24749i), any(vec2<bool>(true, true))), func_1(Struct_2(global0.e, Struct_1(43781i, false), global0.c, global0.b, Struct_1(27603i, global0.d.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(ceil(arg_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_0.x)))), func_1(Struct_2(global0.d, Struct_1(~(-2147483647i), select(var_1.x, true, true)), arg_1, global0.a, func_1(Struct_2(Struct_1(10669i, global0.d.b), Struct_1(-1i, global0.b.b), -1658f, Struct_1(-179i, var_1.x), Struct_1(global0.b.a, true))))), func_1(Struct_2(global0.b, func_1(Struct_2(Struct_1(global0.b.a, var_1.x), Struct_1(-16311i, false), global0.c, Struct_1(-57947i, true), Struct_1(global0.b.a, true))), -175f, global0.a, Struct_1(2147483647i, any(var_1.xz)))));
    return Struct_2(func_1(Struct_2(func_1(Struct_2(Struct_1(-1982i, var_1.x), global0.e, -586f, global0.e, global0.a)), Struct_1(global0.a.a, u_input.b < 60033u), _wgslsmith_f_op_f32(-1095f - _wgslsmith_f_op_f32(func_4(global0.a, u_input.b, Struct_2(Struct_1(-42456i, global0.e.b), Struct_1(var_0.x, arg_2.x), arg_1, global0.e, Struct_1(1i, arg_2.x))))), global0.e, global0.e)), Struct_1(~var_0.x, true), global0.c, global0.e, func_1(Struct_2(global0.e, global0.b, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(floor(-1297f))), func_1(Struct_2(global0.e, global0.d, -1975f, Struct_1(global0.e.a, false), global0.b)), Struct_1(global0.d.a, any(arg_2.zz)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.e.a;
    var var_1 = func_5(vec4<f32>(_wgslsmith_f_op_f32(abs(-749f)), global0.c, _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(func_4(func_1(Struct_2(global0.d, global0.a, global0.c, global0.a, Struct_1(global0.b.a, true))), u_input.b, Struct_2(global0.a, func_1(Struct_2(Struct_1(global0.d.a, false), Struct_1(-42318i, true), global0.c, global0.b, Struct_1(global0.b.a, global0.a.b))), global0.c, func_1(Struct_2(Struct_1(global0.e.a, true), global0.e, global0.c, Struct_1(global0.a.a, false), Struct_1(-37271i, global0.e.b))), Struct_1(global0.b.a, false))))), -309f, vec3<bool>(countOneBits(u_input.a) == _wgslsmith_sub_u32(0u, ~u_input.a), !(global0.e.b && true), !global0.b.b));
    var var_2 = ~vec4<i32>(-global0.a.a, firstTrailingBit(i32(-1i) * -3935i), 27033i, func_1(Struct_2(func_1(Struct_2(Struct_1(24574i, global0.e.b), var_1.a, global0.c, Struct_1(global0.e.a, global0.d.b), var_1.a)), Struct_1(0i, true), -1284f, var_1.e, func_5(vec4<f32>(-1005f, global0.c, 133f, 1124f), -662f, vec3<bool>(false, var_1.e.b, true)).a)).a);
    let var_3 = var_1.c;
    global0 = func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -471f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1886f * var_1.c)), var_1.c) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(577f, var_1.c, var_1.c, -234f), vec4<f32>(-1000f, var_1.c, var_1.c, 919f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-357f, 601f, var_1.c, var_1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, global0.c, global0.c, var_1.c)))))), 1839f, !vec3<bool>(all(select(vec4<bool>(var_1.e.b, var_1.a.b, true, true), vec4<bool>(false, global0.b.b, global0.b.b, false), var_1.e.b)), _wgslsmith_f_op_f32(min(419f, global0.c)) >= _wgslsmith_f_op_f32(step(249f, global0.c)), !all(vec4<bool>(var_1.d.b, false, false, true))));
    let var_4 = func_5(vec4<f32>(global0.c, _wgslsmith_div_f32(133f, _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1567f * global0.c)))), var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(global0.c * global0.c))))), vec3<bool>(var_1.a.b, u_input.b >= 4294967295u, true || var_1.a.b)).e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, 0u), 4294967295u, 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1439f, var_1.c, -844f, var_1.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-476f, global0.c, 606f, global0.c) - vec4<f32>(var_1.c, global0.c, var_1.c, -324f)))))));
}

