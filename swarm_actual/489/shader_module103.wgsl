struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = 1852f;
    var var_1 = arg_0.wz;
    var var_2 = vec4<u32>(abs(u_input.e.x), 14128u, u_input.c, _wgslsmith_dot_vec2_u32(arg_2.a, ~(vec2<u32>(1u, 0u) & vec2<u32>(u_input.e.x, arg_2.a.x))));
    let var_3 = Struct_1(arg_2.a);
    var var_4 = Struct_1(countOneBits(vec2<u32>(min(u_input.e.x << (4294967295u % 32u), ~u_input.e.x), var_2.x)));
    return reverseBits(~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), _wgslsmith_div_u32(32378u, ~var_2.x)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<u32> {
    let var_0 = ~u_input.b;
    var var_1 = Struct_1(firstLeadingBit(vec2<u32>(global0.a.x >> (~35730u % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 76201u, 34264u, u_input.e.x), vec4<u32>(u_input.e.x, 0u, arg_2.a.x, global0.a.x)), vec4<u32>(86659u, arg_2.a.x, 53573u, 17715u)))));
    var_1 = Struct_1(vec2<u32>(~1u, _wgslsmith_mod_u32(u_input.e.x & 1u, 4657u)) | _wgslsmith_sub_vec2_u32(func_3(vec4<bool>(false, arg_1, true, true), true, arg_0, arg_2), vec2<u32>(~u_input.c, _wgslsmith_clamp_u32(var_1.a.x, 6105u, var_1.a.x))));
    let var_2 = false;
    var var_3 = arg_0.a.x;
    return abs(func_3(vec4<bool>(false, arg_1, any(vec2<bool>(arg_1, var_2)), false), any(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, var_2, true), var_2)), Struct_1(abs(vec2<u32>(global0.a.x, 54533u))), Struct_1(global0.a))) & _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~(arg_0.a & vec2<u32>(4294967295u, 7706u)), vec2<u32>(~u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, global0.a.x, var_1.a.x), u_input.e))), _wgslsmith_add_vec2_u32(~(~arg_2.a), vec2<u32>(79791u, 55121u ^ var_1.a.x)));
}

fn func_1(arg_0: f32) -> vec3<u32> {
    let var_0 = global0.a & ~global0.a;
    global0 = Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 43215u), vec2<u32>(u_input.c, ~u_input.e.x)) >> (func_2(Struct_1(global0.a), all(vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(4294967295u, u_input.e.x)), max(vec4<i32>(u_input.b.x, u_input.d.x, 1i, 0i), -vec4<i32>(u_input.d.x, -23614i, -2147483647i, 33899i))) % vec2<u32>(32u)));
    global0 = Struct_1(((~vec2<u32>(u_input.e.x, 0u) >> (~var_0 % vec2<u32>(32u))) | countOneBits(u_input.e.zx)) << (func_3(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), false), true, Struct_1(func_3(vec4<bool>(true, false, true, false), false, Struct_1(global0.a), Struct_1(global0.a))), Struct_1(var_0)) % vec2<u32>(32u)));
    let var_1 = ~firstLeadingBit(u_input.d);
    var var_2 = _wgslsmith_mod_i32(1i, ~min(countOneBits(abs(u_input.d.x)), ~u_input.d.x));
    return vec3<u32>(u_input.c, ~30258u, func_2(Struct_1(_wgslsmith_div_vec2_u32(var_0, vec2<u32>(var_0.x, u_input.e.x))), true == select(true, true, true), Struct_1(var_0), -min(u_input.b, vec4<i32>(6083i, var_1.x, 1i, u_input.d.x))).x & var_0.x);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(abs(abs(~max(u_input.e.yz, vec2<u32>(u_input.e.x, 28232u)))));
    var_0 = Struct_1(u_input.e.xy);
    let var_1 = u_input.b.xxy;
    var_0 = Struct_1(global0.a);
    var var_2 = u_input.d.x < var_1.x;
    return Struct_1(global0.a);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec3<f32> {
    var var_0 = Struct_1(vec2<u32>(~(~func_4(u_input.d.x, vec3<u32>(0u, global0.a.x, arg_0.a.x), arg_0.a.x, vec4<u32>(26485u, arg_0.a.x, 9301u, 4294967295u)).a.x), arg_0.a.x));
    global0 = func_4(28887i, u_input.e, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(max(u_input.e, vec3<u32>(var_0.a.x, arg_0.a.x, 22120u)), u_input.e), ~vec3<u32>(3172u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, ~28724u, 0u)), ~reverseBits(vec3<u32>(arg_0.a.x, 4407u, var_0.a.x) & u_input.e)), _wgslsmith_sub_vec4_u32((~vec4<u32>(0u, arg_0.a.x, 0u, arg_0.a.x) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, arg_0.a.x, var_0.a.x, 18263u), vec4<u32>(arg_0.a.x, 4294967295u, var_0.a.x, var_0.a.x))) | (abs(vec4<u32>(var_0.a.x, 0u, 13445u, arg_0.a.x)) ^ vec4<u32>(global0.a.x, 0u, 3039u, 34466u)), firstTrailingBit((vec4<u32>(u_input.e.x, 2070u, 0u, var_0.a.x) | vec4<u32>(var_0.a.x, global0.a.x, var_0.a.x, arg_0.a.x)) << (vec4<u32>(4290u, 0u, 4111u, 0u) % vec4<u32>(32u)))));
    var var_1 = func_4(~abs(u_input.a), max(u_input.e, ~u_input.e), ~0u, vec4<u32>(~57973u, u_input.e.x, select(~_wgslsmith_add_u32(var_0.a.x, var_0.a.x), var_0.a.x, any(!vec3<bool>(false, true, arg_2))), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(0u, u_input.c), ~var_0.a.x, ~(~4294967295u))));
    var_0 = Struct_1(max(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 4636u), ~vec2<u32>(4294967295u, u_input.c)), abs(~vec2<u32>(62642u, 1u)) ^ (vec2<u32>(arg_0.a.x, 0u) | vec2<u32>(0u, 1u))));
    var var_2 = u_input.d & firstLeadingBit(u_input.d);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-800f, -1604f, -1117f) * vec3<f32>(-643f, arg_1, -827f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1000f, -330f)))), vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-arg_1)))), select(!vec3<bool>(arg_2, true, true), !select(vec3<bool>(false, false, arg_2), vec3<bool>(true, arg_2, arg_2), arg_2), vec3<bool>(true, any(vec4<bool>(true, true, true, arg_2)), arg_2)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, -878f), vec3<f32>(1734f, arg_1, arg_1))))))));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec2<i32>) -> Struct_1 {
    global0 = func_4(abs(~abs(arg_0.x)), ~vec3<u32>(select(37350u, _wgslsmith_mod_u32(arg_2.x, u_input.c), true), global0.a.x, u_input.e.x >> (~32846u % 32u)), ~_wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, global0.a.x, arg_2.x, arg_2.x) & vec4<u32>(0u, 68882u, 28377u, 10586u)), countOneBits(~vec4<u32>(4294967295u, u_input.c, 36072u, u_input.c))), vec4<u32>(firstTrailingBit(global0.a.x << (~global0.a.x % 32u)), _wgslsmith_div_u32(~29880u, select(1u, 1u, true)) ^ ~global0.a.x, _wgslsmith_mod_u32(~63745u, global0.a.x), 4294967295u));
    global0 = func_4(arg_0.x | max(arg_3.x ^ arg_0.x, min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.d.x, -75024i), vec4<i32>(39889i, 2147483647i, 24957i, 2147483647i)), 51262i)), _wgslsmith_div_vec3_u32(vec3<u32>(~max(arg_2.x, 62908u), global0.a.x, ~firstTrailingBit(u_input.c)), vec3<u32>(104073u, max(1u, 31959u), ~global0.a.x)), reverseBits(countOneBits(_wgslsmith_sub_u32(~1u, u_input.c))), vec4<u32>(arg_2.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(arg_2.x, 66545u, u_input.e.x, arg_2.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, arg_2.x, arg_2.x, 1u), vec4<u32>(u_input.c, 0u, 0u, 527u))), countOneBits(select(vec4<u32>(u_input.e.x, global0.a.x, 4294967295u, 26439u), vec4<u32>(arg_2.x, u_input.e.x, 1u, 1u), vec4<bool>(true, true, true, false)))), arg_2.x, ~(~_wgslsmith_mod_u32(0u, 19509u))));
    let var_0 = vec4<i32>(0i, 42551i, arg_3.x, abs(arg_3.x));
    var var_1 = Struct_1(~_wgslsmith_mult_vec2_u32(u_input.e.yx, u_input.e.xy));
    var var_2 = Struct_1(~global0.a);
    return Struct_1(func_4(arg_0.x, countOneBits(~max(u_input.e, vec3<u32>(var_1.a.x, global0.a.x, 8718u))), ~(_wgslsmith_sub_u32(38266u, u_input.c) | var_2.a.x), ~abs(vec4<u32>(1777u, 4294967295u, 39532u, 1u) ^ vec4<u32>(0u, 0u, 40155u, var_1.a.x))).a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.e);
    global0 = func_6(select(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-9237i, 9885i)), u_input.b.xw), u_input.d, !all(vec3<bool>(true, true, false))) & (u_input.d << ((u_input.e.xz >> (vec2<u32>(32080u, var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_4(~u_input.b.x, func_1(145f), var_0.x, vec4<u32>(0u, var_0.x, 1u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1472f)), false & any(vec3<bool>(false, false, false)))) + vec3<f32>(-602f, _wgslsmith_f_op_f32(-1640f * _wgslsmith_f_op_f32(floor(1000f))), 1678f)), ~vec2<u32>(4294967295u, 17157u), vec2<i32>(u_input.b.x, u_input.b.x));
    let var_1 = abs(_wgslsmith_mod_vec4_u32(abs(~vec4<u32>(global0.a.x, var_0.x, 22699u, u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 47847u, var_0.x, var_0.x), vec4<u32>(4294967295u, global0.a.x, u_input.c, var_0.x))) << (~(~max(vec4<u32>(global0.a.x, global0.a.x, var_0.x, u_input.c), vec4<u32>(4294967295u, var_0.x, 4294967295u, global0.a.x))) % vec4<u32>(32u)));
    let var_2 = u_input.d.x;
    var_0 = max(var_1.wzy, vec3<u32>(_wgslsmith_sub_u32(~43235u, u_input.c), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(94791u, global0.a.x), var_1.x & u_input.e.x), func_6(firstLeadingBit(u_input.d), vec3<f32>(-1082f, 784f, -762f), ~vec2<u32>(var_0.x, var_0.x), u_input.d).a.x), ~func_3(vec4<bool>(false, true, false, true), all(vec2<bool>(false, false)), Struct_1(global0.a), func_6(vec2<i32>(var_2, 4710i), vec3<f32>(-199f, -531f, 1000f), vec2<u32>(var_0.x, 44069u), vec2<i32>(u_input.a, u_input.b.x))).x));
    var var_3 = _wgslsmith_add_i32(-_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.d, u_input.b.ww), 1i), _wgslsmith_dot_vec3_i32(abs(u_input.b.wwz), u_input.b.zxx) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, var_1.x, u_input.c), var_1.yww) % 32u)) ^ (-45508i << (func_1(-1696f).x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(select(-u_input.d.x, -(~39329i), false), select(i32(-1i) * -u_input.d.x, -2147483647i, !(var_0.x >= global0.a.x)), _wgslsmith_dot_vec4_i32(-u_input.b, vec4<i32>(-u_input.a, abs(-8502i), 16061i, ~(-2147483647i))), -7335i), max(-9887i, u_input.d.x) | _wgslsmith_dot_vec3_i32(u_input.b.www, vec3<i32>(1i, ~(-2147483647i), -2147483647i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125f * -1495f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-514f * 552f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -350f))))), var_1.yxz, -1i);
}

