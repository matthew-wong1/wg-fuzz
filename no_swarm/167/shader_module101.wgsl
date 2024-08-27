struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> vec3<f32> {
    var var_0 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), ~vec4<u32>(u_input.a, 1u, u_input.a, 63267u))) ^ ~min(vec4<u32>(max(37058u, 70126u), firstTrailingBit(u_input.a), select(4294967295u, 63290u, false), ~91892u), max(vec4<u32>(u_input.a, u_input.a, 82629u, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 24338u, 1u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 4294967295u, 2190u, u_input.a)));
    let var_1 = 1f;
    var_0 = select(~(~vec4<u32>(_wgslsmith_add_u32(var_0.x, 1u), u_input.a ^ 0u, ~8168u, var_0.x)), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(53000u, 35936u, u_input.a, 4294967295u), ~vec4<u32>(60938u, 22196u, u_input.a, 0u)), firstLeadingBit(~(~vec4<u32>(var_0.x, 4860u, u_input.a, u_input.a)))), all(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), vec3<bool>(false, u_input.a != u_input.a, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), true))));
    let var_2 = _wgslsmith_add_i32(i32(-1i) * -76129i, abs(_wgslsmith_mod_i32(~u_input.b, 11120i) << (10101u % 32u)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(firstTrailingBit(~var_0.zyx), firstTrailingBit(vec3<u32>(303u, 18569u, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(233f, var_1, var_1), vec3<f32>(var_1, -642f, var_1)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, 1018f, var_1)))))));
    return vec3<f32>(-254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-444f, var_1, true)), _wgslsmith_f_op_f32(-var_3.a.b.x))), 677f))), var_1);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-162f, arg_0.b.x)))))) + 1764f);
    let var_1 = Struct_2(arg_0);
    var var_2 = var_1.a;
    var_2 = var_1.a;
    var_2 = var_1.a;
    return arg_2.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = 3795u;
    var_0 = 17957u;
    var_0 = 65952u;
    var var_1 = Struct_1(0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, _wgslsmith_f_op_f32(select(226f, _wgslsmith_f_op_f32(-arg_3.x), all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(func_4(Struct_1(arg_0.a, vec3<f32>(arg_0.b.x, arg_3.x, 571f)), arg_0.a, _wgslsmith_f_op_vec3_f32(func_3(-1755i)))))));
    var_1 = arg_0;
    return Struct_1(_wgslsmith_add_u32(min(arg_1, firstTrailingBit(select(var_1.a, 22006u, false))), 37532u), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * arg_3.x) * _wgslsmith_f_op_f32(arg_3.x - 794f)), arg_0.b.x))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = Struct_2(func_2(Struct_1(_wgslsmith_mult_u32(u_input.a, ~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(877f, var_0, var_0) + vec3<f32>(var_0, var_0, var_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -1023f)))), u_input.a | ~u_input.a, ~u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1531f, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), any(vec2<bool>(true, true)))))));
    let var_2 = _wgslsmith_div_vec4_u32(max(~select(vec4<u32>(u_input.a, var_1.a.a, 4294967295u, u_input.a), vec4<u32>(1u, 1u, var_1.a.a, var_1.a.a) & vec4<u32>(1300u, u_input.a, var_1.a.a, 8776u), var_0 != -1210f), _wgslsmith_mod_vec4_u32(vec4<u32>(~var_1.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.a.a, 13797u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 57597u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 79765u, var_1.a.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), var_1.a.a), vec4<u32>(var_1.a.a & 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a, var_1.a.a), vec2<u32>(u_input.a, var_1.a.a)), ~1u, 14539u))), ~(countOneBits(~vec4<u32>(4294967295u, u_input.a, 1u, 4294967295u)) >> ((~vec4<u32>(var_1.a.a, 0u, 0u, u_input.a) ^ _wgslsmith_add_vec4_u32(vec4<u32>(1u, 11417u, var_1.a.a, 24764u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))) % vec4<u32>(32u))));
    var_1 = Struct_2(Struct_1(~0u, vec3<f32>(_wgslsmith_f_op_f32(step(var_0, 150f)), _wgslsmith_f_op_f32(select(-1008f, _wgslsmith_f_op_f32(-259f * var_1.a.b.x), true)), -454f)));
    var var_3 = func_2(Struct_1(_wgslsmith_mult_u32(44078u, var_1.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1511f, -317f, -715f), vec3<f32>(-2635f, var_1.a.b.x, 1155f))))), ~var_1.a.a, -28644i, _wgslsmith_f_op_vec2_f32(var_1.a.b.zz + _wgslsmith_f_op_vec2_f32(-var_1.a.b.yz)));
    return Struct_2(Struct_1(select(min(~var_2.x, 1u), 4294967295u, false), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_3.b * _wgslsmith_f_op_vec3_f32(exp2(var_1.a.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b))))));
}

fn func_5(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = ~select(abs(reverseBits(vec3<u32>(arg_0.a.a, u_input.a, 47876u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u ^ arg_0.a.a, u_input.a, u_input.a ^ u_input.a), ~(~vec3<u32>(u_input.a, u_input.a, 6416u)), reverseBits(vec3<u32>(23704u, 54678u, u_input.a) >> (vec3<u32>(69417u, arg_0.a.a, 15068u) % vec3<u32>(32u)))), true);
    var_0 = _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(abs(u_input.a), u_input.a, var_0.x)), vec3<u32>(~(~1u) >> (func_1().a.a % 32u), 0u, 1u));
    var var_1 = true;
    let var_2 = -103f;
    let var_3 = Struct_1(abs(_wgslsmith_add_u32(~(arg_0.a.a & 4294967295u), _wgslsmith_add_u32(~78516u, ~u_input.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b.x, arg_0.a.b.x, -626f) + arg_0.a.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.a.b, arg_0.a.b)), arg_0.a.b)) - arg_0.a.b));
    return select(vec4<bool>(true, select(true, (-15462i >> (u_input.a % 32u)) != -u_input.c.x, false), all(vec3<bool>(any(vec3<bool>(false, false, true)), select(false, true, false), true)), all(vec3<bool>(true, true, true)) || true), vec4<bool>(!all(vec4<bool>(true, true, true, true)), all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))), true, all(vec4<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(true, false, false)), true, u_input.a > var_0.x))), !(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 52863u), vec4<u32>(u_input.a, 67900u, u_input.a, u_input.a)) != 4728u, true), vec2<bool>(true, true), any(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false), func_5(func_1()), true)));
    var var_1 = ~((vec4<u32>(u_input.a, u_input.a, 22653u, ~4294967295u) & vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 37549u), vec3<u32>(1u, 0u, u_input.a)), max(12681u, u_input.a), _wgslsmith_sub_u32(1u, u_input.a))) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, 4294967295u, u_input.a, 37245u)), ~(vec4<u32>(u_input.a, 19763u, 1u, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-489f, -1000f), vec2<f32>(187f, 774f))) + vec2<f32>(-110f, _wgslsmith_f_op_f32(-1063f + -1370f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, -463f)), func_1().a.b.xz, true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-227f, 890f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(982f, 1000f))) * vec2<f32>(1f, 1f))));
    var_1 = firstTrailingBit(vec4<u32>(~var_1.x, ~78696u, u_input.a, var_1.x));
    var_0 = !vec2<bool>(true, !any(!vec2<bool>(var_0.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-954f, _wgslsmith_f_op_f32(sign(var_2.x)), u_input.c ^ vec3<i32>(-(~0i), _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-13579i, u_input.b, u_input.b)), 1i), vec2<u32>(_wgslsmith_div_u32(~20743u, 4294967295u), _wgslsmith_dot_vec3_u32(~var_1.zzx, min(firstTrailingBit(var_1.zxy), max(vec3<u32>(27372u, u_input.a, 1u), var_1.wyw)))));
}

