struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * 2104f) + _wgslsmith_div_f32(1099f, var_0.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-654f - var_0.a.x), _wgslsmith_f_op_f32(-1240f + arg_0.a.x), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-127f, -1731f, -1125f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1175f, var_0.a.x, -248f) * vec3<f32>(-790f, var_0.a.x, -758f))))))));
    var var_2 = 34541i;
    var_2 = _wgslsmith_dot_vec3_i32(firstLeadingBit(-select(vec3<i32>(arg_2, 6524i, u_input.b), max(vec3<i32>(0i, var_0.b.b.x, arg_1.b.x), arg_3.xzw), vec3<bool>(true, true, true))), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(reverseBits(arg_3.wxx), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b.x, u_input.a, 58764i), arg_3.xxy)));
    var var_3 = Struct_1(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, var_0.b.a.x), arg_0.b.a << (arg_1.a % vec4<u32>(32u))) << (vec4<u32>(arg_0.b.a.x, ~0u, _wgslsmith_sub_u32(1u, arg_1.a.x), ~40083u) % vec4<u32>(32u)), var_0.b.a, vec4<u32>(_wgslsmith_dot_vec4_u32(select(arg_1.a, arg_0.b.a, true), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.a.x, 33771u, 122847u, 1u), vec4<u32>(1u, 7903u, arg_1.a.x, var_0.b.a.x))), ~arg_0.b.a.x, abs(var_0.b.a.x) << (~var_0.b.a.x % 32u), var_0.b.a.x)), ~arg_1.b);
    return vec4<bool>(true, true, _wgslsmith_clamp_i32(abs(~var_3.b.x), ~(-var_0.b.b.x), min(1i, firstLeadingBit(-2147483647i))) > (_wgslsmith_dot_vec4_i32(arg_3, vec4<i32>(var_0.b.b.x, arg_3.x, arg_2, arg_1.b.x) << (var_0.b.a % vec4<u32>(32u))) | arg_1.b.x), true);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    let var_0 = !(!(!func_3(Struct_2(vec2<f32>(arg_1, arg_1), Struct_1(vec4<u32>(58583u, 0u, 69674u, 10976u), arg_0.xz)), Struct_1(vec4<u32>(4294967295u, 24523u, 26034u, 4294967295u), arg_0.yz), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, -23058i, u_input.a), vec4<i32>(arg_0.x, 60981i, 35960i, u_input.b)), vec4<i32>(u_input.a, arg_0.x, -40593i, arg_0.x) & vec4<i32>(arg_0.x, u_input.a, 10838i, u_input.b))));
    var var_1 = Struct_1(~(~vec4<u32>(1u, 1u, 1u, 1u)), vec2<i32>(1i, 1i));
    var_1 = Struct_1(vec4<u32>(abs(~var_1.a.x), _wgslsmith_dot_vec2_u32(firstTrailingBit(var_1.a.zx), ~abs(vec2<u32>(var_1.a.x, 34853u))), 9314u, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(var_1.a.x), _wgslsmith_mult_u32(var_1.a.x, var_1.a.x), var_1.a.x), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.a.xyz, var_1.a.yyy), ~var_1.a.xzx))), select(-_wgslsmith_div_vec2_i32(vec2<i32>(6856i, u_input.a), -vec2<i32>(-1i, u_input.a)), (vec2<i32>(1i, 1i) >> (vec2<u32>(var_1.a.x, var_1.a.x) % vec2<u32>(32u))) | countOneBits(var_1.b), !var_0.x));
    var var_2 = -16387i;
    var var_3 = var_1.a.zzw;
    return Struct_1(vec4<u32>(1u, _wgslsmith_div_u32(abs(4294967295u), 12363u), 1u, 72539u), -arg_0.yx);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(139f, 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-701f, 922f)) - _wgslsmith_f_op_f32(788f - 515f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(2101f)))))), func_2(abs(select(vec4<i32>(u_input.b, 32717i, 0i, 0i), -vec4<i32>(u_input.b, u_input.a, 2147483647i, u_input.b), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f))));
    var var_1 = abs(u_input.a);
    let var_2 = func_2(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0.b.b.x, -1i, var_0.b.b.x) ^ vec4<i32>(1i, 528i, -62816i, u_input.a), abs(vec4<i32>(var_0.b.b.x, var_0.b.b.x, 1i, var_0.b.b.x)))), _wgslsmith_f_op_f32(round(var_0.a.x)));
    return Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_2.a.x, 15083u, 18463u), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.x, var_0.b.a.x, var_0.b.a.x, 8024u), var_0.b.a) & ~vec4<u32>(var_2.a.x, 4294967295u, var_0.b.a.x, 4294967295u))), vec2<i32>(-countOneBits(u_input.a), func_2(vec4<i32>(u_input.a | 0i, 2147483647i, -15559i, 54702i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(112f, var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x * -795f)))).b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true);
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-642f - 2095f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-209f, -204f)), 1f))), 1f), Struct_1((firstLeadingBit(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)) & var_0.a) & ~vec4<u32>(var_0.a.x, var_0.a.x, 60736u, var_0.a.x), var_0.b));
    let var_2 = func_2(-(~abs(-vec4<i32>(-2147483647i, var_0.b.x, u_input.a, var_1.b.b.x))), _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)))))));
    var_1 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) + var_1.a) + _wgslsmith_f_op_vec2_f32(-var_1.a))), var_1.a), var_1.b);
    var_1 = Struct_2(var_1.a, Struct_1(~_wgslsmith_sub_vec4_u32(~vec4<u32>(84076u, var_0.a.x, 62185u, 53026u), countOneBits(vec4<u32>(0u, var_0.a.x, 4294967295u, var_1.b.a.x))), vec2<i32>(-u_input.a, ~var_1.b.b.x >> (firstTrailingBit(4294967295u) % 32u))));
    let var_3 = func_3(Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(var_1.a)), var_1.a, true)))), func_2(~vec4<i32>(var_0.b.x, u_input.b, var_2.b.x, var_1.b.b.x), _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))), Struct_1(vec4<u32>(~abs(4294967295u), 0u, 1u, ~func_2(vec4<i32>(var_0.b.x, -19216i, var_1.b.b.x, var_2.b.x), var_1.a.x).a.x), abs(vec2<i32>(~(-41071i), _wgslsmith_dot_vec4_i32(vec4<i32>(-19219i, 1i, -51150i, -24647i), vec4<i32>(12696i, u_input.b, var_2.b.x, -2147483647i))))), -select(~var_2.b.x, abs(47179i) ^ var_1.b.b.x, _wgslsmith_clamp_u32(4294967295u, 4294967295u, var_2.a.x) < min(0u, var_2.a.x)), reverseBits(firstTrailingBit(countOneBits(vec4<i32>(17690i, 91582i, var_1.b.b.x, -1i))))).x;
    let var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(-43083i, _wgslsmith_clamp_i32(1i, ~(-26643i), -24628i), _wgslsmith_clamp_i32(var_0.b.x, -14491i, u_input.b) << (~0u % 32u), ~14062i >> (var_1.b.a.x % 32u))), _wgslsmith_add_i32(~0i, select(var_2.b.x, var_1.b.b.x, any(vec2<bool>(false, var_3)) || var_3)), _wgslsmith_f_op_f32(round(877f)), (vec4<u32>(var_1.b.a.x, 4294967295u, ~0u, 15901u) >> ((var_1.b.a << (vec4<u32>(var_0.a.x, 1671u, var_1.b.a.x, 18853u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ select(var_0.a, firstLeadingBit(~var_0.a), any(!vec4<bool>(true, false, var_3, true))), select(_wgslsmith_dot_vec3_u32(var_2.a.xxz, select(~vec3<u32>(39316u, 0u, var_2.a.x), var_1.b.a.zyy, vec3<bool>(false, false, false))), 1u, select(!var_3 & false, true, true)));
}

