struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-9412i, 0i, u_input.a, -1i) | vec4<i32>(u_input.a, u_input.a, 1i, 9279i), vec4<i32>(~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, 86689i), vec4<i32>(0i, 0i, u_input.a, u_input.a)), min(-2147483647i, u_input.a), u_input.a)), vec4<i32>(~30934i, -u_input.a, ~1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(19150i, u_input.a), vec2<i32>(u_input.a, u_input.a)))) ^ max(vec4<i32>(1i, u_input.a, ~(-u_input.a), i32(-1i) * -53043i), select(~vec4<i32>(-2147483647i, u_input.a, -35690i, 50866i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), true) | (vec4<i32>(1i, 27108i, u_input.a, 2147483647i) | countOneBits(vec4<i32>(u_input.a, u_input.a, 20645i, 14230i))));
    let var_1 = false;
    var var_2 = u_input.a;
    var var_3 = ~(~_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(49667u, 1u, 60014u, 38080u), vec4<u32>(1u, 17500u, 1u, 0u)), 1u)) | _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10931u, 20947u, 4294967295u, 49862u), vec4<u32>(1u, 4294967295u, 5486u, 0u)), abs(21409u))), 1u);
    var_2 = _wgslsmith_dot_vec3_i32(firstLeadingBit(var_0.zxx), vec3<i32>(-1i, -54897i, -u_input.a));
    return vec4<bool>(((firstLeadingBit(64789u) & _wgslsmith_dot_vec4_u32(vec4<u32>(5364u, 4294967295u, 0u, 83958u), vec4<u32>(0u, 0u, 0u, 0u))) & ~(~0u)) == ~(~1u), any(vec4<bool>(true, var_1, true, select(true, var_1, var_1))), all(!(!(!vec3<bool>(false, false, var_1)))), var_1);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> Struct_2 {
    return Struct_2(Struct_1(countOneBits(select(_wgslsmith_dot_vec3_u32(vec3<u32>(45568u, 0u, 37013u), vec3<u32>(1u, 4294967295u, 0u)), firstTrailingBit(1u), true)), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), 381f, arg_1.x, _wgslsmith_f_op_f32(exp2(arg_1.x))), !func_3(), _wgslsmith_f_op_f32(arg_1.x - 1f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(1024f - 519f)), _wgslsmith_sub_vec4_u32(select(~(~vec4<u32>(1u, 78524u, 38526u, 1u)), ~select(vec4<u32>(20704u, 12562u, 51095u, 45360u), vec4<u32>(13088u, 36823u, 70923u, 0u), false), vec4<bool>(true, true, true, true)), vec4<u32>(39005u, ~4294967295u, min(1u, 4294967295u), 4294967295u)), 4294967295u, Struct_1(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-446f, 1349f, arg_1.x, arg_1.x) - vec4<f32>(-702f, 552f, -1048f, 1133f))))), select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), true), vec4<bool>(arg_0.x < -1i, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(arg_1.x * 1f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(reverseBits(firstLeadingBit(arg_0.a.a)), vec4<f32>(-1411f, arg_2.b.x, -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_1.x))))))), arg_2.c, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-671f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d * 1349f))))));
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(76429u, 23702u)), max(vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(arg_0.a, arg_0.a))), ~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a, 4294967295u), vec2<u32>(arg_0.a, 0u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1153f, arg_0.b.x, arg_0.b.x, arg_0.d) + _wgslsmith_f_op_vec4_f32(-arg_0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b + vec4<f32>(2548f, arg_0.b.x, -141f, arg_0.d))))), !func_4(func_2(-vec2<i32>(2147483647i, 11554i), vec2<f32>(arg_0.d, arg_0.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1941f, arg_0.d)))), func_2(~vec2<i32>(-1i, -41299i), arg_0.b.zy).e).c, -1909f);
    var_0 = arg_0;
    let var_1 = var_0.d;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, var_0.d, 858f)))), var_0.b.wzw)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-639f, _wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1578f, arg_0.b.x)))) * _wgslsmith_f_op_vec3_f32(-var_2.b.wzx)), false));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-1i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_mult_i32(10007i, -53452i), abs(u_input.a)), vec3<i32>(-1i, -u_input.a, u_input.a))), _wgslsmith_mult_vec2_i32(vec2<i32>(-14168i, _wgslsmith_sub_i32(-41050i, max(u_input.a, u_input.a))), vec2<i32>(_wgslsmith_add_i32(u_input.a, i32(-1i) * -1i), reverseBits(abs(0i)))));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = any(vec3<bool>(false, any(arg_1.c), arg_1.c.x));
    var var_1 = !select(!select(arg_1.c.xzy, !arg_1.c.ywz, !vec3<bool>(var_0, arg_1.c.x, true)), !vec3<bool>(var_0, select(true, false, var_0), func_4(Struct_2(arg_1, arg_1.b.wyz, vec4<u32>(0u, 21077u, 1u, 1u), arg_1.a, arg_1), vec2<f32>(arg_1.d, -1036f), Struct_1(48302u, vec4<f32>(arg_1.b.x, arg_1.d, 795f, arg_1.d), vec4<bool>(true, var_0, false, true), 963f)).c.x), arg_1.c.x);
    var var_2 = func_2(arg_0.xz, arg_1.b.zy).c.x;
    let var_3 = ~_wgslsmith_sub_u32(arg_1.a, ~max(func_4(Struct_2(arg_1, arg_1.b.wxy, vec4<u32>(arg_1.a, arg_1.a, 7615u, 37845u), arg_1.a, arg_1), arg_1.b.xz, Struct_1(0u, vec4<f32>(-1000f, 1142f, arg_1.d, arg_1.b.x), arg_1.c, arg_1.d)).a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, arg_1.a, arg_1.a), vec3<u32>(9462u, arg_1.a, arg_1.a))));
    let var_4 = func_2(-arg_0.xy, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.x, arg_1.d), func_4(func_2(arg_0.xy, arg_1.b.yy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-502f, arg_1.d) + arg_1.b.zw)), arg_1).b.wy));
    return Struct_2(func_2(arg_0.zx, func_2(max(vec2<i32>(u_input.a, 25000i), -arg_0.zy), _wgslsmith_f_op_vec2_f32(arg_1.b.yw - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, var_4.a.d)))).e.b.wy).e, var_4.a.b.xyw, vec4<u32>(1u, _wgslsmith_mult_u32(firstLeadingBit(~var_4.a.a), 4532u), ~_wgslsmith_sub_u32(~var_3, ~70559u), 36766u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(43811u, _wgslsmith_clamp_u32(5649u, 75726u, arg_1.a), 4294967295u), var_4.c.zxy >> (var_4.c.xxx % vec3<u32>(32u)))), Struct_1(~37850u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, var_4.b.x, var_4.b.x, arg_1.d) + arg_1.b) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-177f, -267f, 1063f, 2621f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1123f, var_4.a.d, var_4.a.d, var_4.b.x) + var_4.e.b))), vec4<bool>(true, true, true, !(arg_1.a == var_4.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) * _wgslsmith_f_op_f32(arg_1.d * -1003f)))));
}

fn func_1() -> u32 {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(~18626u, 1u), ~_wgslsmith_mod_u32(firstTrailingBit(1u), 1u), _wgslsmith_sub_u32(countOneBits(~1u), firstTrailingBit(_wgslsmith_div_u32(1u, 1u))), _wgslsmith_mult_u32(~abs(select(4294967295u, 1u, true)), abs(_wgslsmith_mult_u32(0u, 34732u)) ^ _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 104462u, 0u)), ~vec3<u32>(54295u, 1u, 48624u))));
    let var_1 = func_6(vec3<i32>(func_5(func_4(func_2(vec2<i32>(1023i, u_input.a), vec2<f32>(530f, 1400f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-878f, -997f), vec2<f32>(1629f, -1000f), false)), func_2(vec2<i32>(33257i, -1i), vec2<f32>(-313f, 447f)).e)), select(-2147483647i, u_input.a, any(func_3().zyw)), _wgslsmith_mult_i32(~firstTrailingBit(42808i), _wgslsmith_sub_i32(29961i, -1157i))), func_2(-countOneBits(vec2<i32>(1i, u_input.a) ^ vec2<i32>(-1i, -26049i)), vec2<f32>(_wgslsmith_f_op_f32(min(-1490f, _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f)))).e);
    var var_2 = 0i;
    let var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(var_1.c, vec4<u32>(var_1.d, 67405u, var_0.x, 22627u))), ~var_1.c) ^ ~var_1.c, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_sub_u32(var_1.c.x, 1u), min(~var_0.x, var_0.x), ~0u), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, var_0.x, var_0.x, var_1.e.a), ~vec4<u32>(var_0.x, 66904u, 4294967295u, 15350u))));
    var_2 = _wgslsmith_sub_i32(_wgslsmith_add_i32(-_wgslsmith_mod_i32(2147483647i, 2147483647i), u_input.a), _wgslsmith_clamp_i32(u_input.a, _wgslsmith_add_i32(30270i, 53936i), ~(-u_input.a)));
    return _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_mult_u32(var_3.x, _wgslsmith_sub_u32(8384u, var_0.x))), 63426u) ^ reverseBits(min(42030u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(any(vec4<bool>(true, true, true, true)) & true);
    var var_1 = u_input.a;
    let var_2 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(i32(-1i) * -u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-u_input.a), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(13657u, 20001u, 1u, 17711u), vec4<u32>(0u, 4294967295u, 10688u, 4535u), ~vec4<u32>(36896u, 4294967295u, 12442u, 0u)), firstTrailingBit(vec4<u32>(1u, 27004u, 11601u, 1u))), firstLeadingBit(~vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_add_u32(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u), abs(13020u)), _wgslsmith_div_u32(select(func_1(), func_1(), true), firstLeadingBit(0u))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-u_input.a, min(var_2, -251i)), _wgslsmith_div_i32(u_input.a, 2281i), -u_input.a));
}

