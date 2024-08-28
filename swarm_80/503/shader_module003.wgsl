struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<u32>, 32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    let var_0 = Struct_1(u_input.d.x, u_input.c, 1u, select(arg_0.d, _wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, arg_0.d.x, arg_0.d.x), vec3<i32>(77289i, 2147483647i, 1i), global0.xzy), arg_3) | -(~_wgslsmith_sub_vec3_i32(arg_0.d, global0.xzw)));
    let var_1 = Struct_1(~(~u_input.b.x), max(_wgslsmith_mult_i32(-80254i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_0.b, var_0.d.x), vec3<i32>(19808i, arg_0.d.x, var_0.d.x)), 56838i)), ~(u_input.e >> (abs(u_input.d.x) % 32u))), ~(~arg_0.a), global0.zyz);
    let var_2 = ~arg_0.c;
    global0 = _wgslsmith_sub_vec4_i32(~select(abs(-vec4<i32>(-2147483647i, var_0.d.x, -24118i, arg_0.d.x)), countOneBits(vec4<i32>(var_0.b, 51099i, 6954i, -1i) | vec4<i32>(u_input.c, 2958i, var_1.d.x, global0.x)), vec4<bool>(arg_2.x, arg_3, arg_2.x & arg_3, arg_2.x)), (vec4<i32>(var_0.b ^ global0.x, max(u_input.a, var_0.b), -16539i, max(var_1.d.x, var_0.b)) ^ abs(-vec4<i32>(var_1.b, var_1.b, global0.x, 18562i))) | firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(var_0.d.x, global0.x), max(-1i, var_1.b), i32(-1i) * -2147483647i, -2147483647i)));
    global1 = array<vec2<u32>, 32>();
    return var_0.a;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(1194f - -678f), -922f, _wgslsmith_f_op_f32(408f * -528f)), vec3<f32>(1f, 1f, 1f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -193f))), _wgslsmith_f_op_f32(f32(-1f) * -1282f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1198f, 801f)) * _wgslsmith_div_f32(-683f, _wgslsmith_f_op_f32(1000f + -342f)))));
    let var_1 = Struct_1(~arg_0.x, 1i << (~func_3(Struct_1(u_input.b.x, global0.x, 4294967295u, vec3<i32>(u_input.e, u_input.a, -2147483647i)), vec2<u32>(u_input.b.x, 7465u), vec3<bool>(true, true, true), true) % 32u), 4294967295u, min(global0.zyw, min(max(arg_1.yzz, ~arg_1.wxw), (vec3<i32>(u_input.c, global0.x, global0.x) >> (vec3<u32>(u_input.b.x, arg_0.x, u_input.d.x) % vec3<u32>(32u))) >> ((vec3<u32>(4294967295u, 0u, 66969u) | arg_0) % vec3<u32>(32u)))));
    var var_2 = true;
    let var_3 = 1000f;
    let var_4 = vec4<u32>(select(_wgslsmith_sub_u32(firstLeadingBit(var_1.a) << (u_input.d.x % 32u), _wgslsmith_mod_u32(countOneBits(var_1.a), 4294967295u)), (func_3(var_1, global1[_wgslsmith_index_u32(arg_0.x, 32u)], vec3<bool>(true, false, true), true) ^ (var_1.a & 97151u)) ^ arg_0.x, (0i >> (abs(u_input.d.x) % 32u)) <= 1i), (min(~20279u, u_input.d.x) ^ var_1.c) >> ((_wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(27982u, 4294967295u, 23550u, 52018u), vec4<u32>(u_input.d.x, u_input.d.x, 0u, var_1.c))) & (arg_0.x | arg_0.x)) % 32u), firstLeadingBit(arg_0.x), _wgslsmith_div_u32(arg_0.x, 1u ^ arg_0.x));
    return Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(select(~14483u, 0u >> (var_1.a % 32u), true), u_input.b.x), _wgslsmith_div_u32(arg_0.x, func_3(Struct_1(92958u, u_input.e, var_4.x, var_1.d), global1[_wgslsmith_index_u32(var_1.c, 32u)], select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), true))), ~countOneBits(_wgslsmith_dot_vec3_i32(~var_1.d, min(global0.zwz, arg_1.wzw))), ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, 104639u, arg_0.x), arg_0)), _wgslsmith_clamp_vec3_i32(arg_1.yxw, min(countOneBits(-vec3<i32>(18406i, 36772i, 46370i)), firstTrailingBit(vec3<i32>(u_input.c, 65514i, -44568i))), global0.yxx));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec2<f32> {
    global0 = select(-vec4<i32>(reverseBits(-17548i << (arg_2.c % 32u)), ~abs(arg_2.d.x), -2147483647i, abs(36405i)), _wgslsmith_mod_vec4_i32(max(min(vec4<i32>(global0.x, arg_0.d.x, 6396i, 1i) << (vec4<u32>(arg_0.c, arg_0.c, 31107u, 20563u) % vec4<u32>(32u)), vec4<i32>(u_input.c, -28536i, 19361i, 2147483647i) & vec4<i32>(arg_0.d.x, arg_2.d.x, -19947i, arg_2.b)), vec4<i32>(70462i, 17793i, 1i, u_input.c & arg_2.b)), select(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-1i, arg_2.d.x, global0.x, 2147483647i)), ~vec4<i32>(u_input.e, u_input.c, arg_2.b, global0.x), ~vec4<i32>(64236i, u_input.a, 13411i, 1i)), vec4<i32>(1i, 2147483647i, u_input.e, global0.x) & ~vec4<i32>(arg_2.d.x, 2147483647i, global0.x, 6591i), vec4<bool>(true, true, select(false, true, false), all(vec3<bool>(false, false, true))))), !vec4<bool>(!any(vec4<bool>(false, true, true, true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false)), false, false));
    var var_0 = Struct_1(max(arg_0.a, ~(~(~0u))), firstLeadingBit(abs(~9604i)), 82315u, min(global0.ywz, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global0.x, arg_0.d.x, arg_0.d.x), select(vec3<i32>(u_input.a, arg_2.b, arg_0.b), select(global0.wxy, vec3<i32>(u_input.c, -1i, 574i), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)))));
    global1 = array<vec2<u32>, 32>();
    var_0 = Struct_1(~(~countOneBits(~arg_1)), ~(~(~global0.x)) ^ global0.x, arg_2.c, ~global0.zwx);
    var var_1 = vec2<bool>(false, !(!select(false, true, all(vec4<bool>(true, true, true, false)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-815f, 887f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -591f), vec2<f32>(-2145f, 897f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(917f, 569f) + vec2<f32>(-818f, -908f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(938f, 217f)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_2(~vec3<u32>(u_input.d.x, u_input.d.x, 8194u), vec4<i32>(global0.x, global0.x, 2147483647i, 65043i)), ~u_input.d.x, func_2(vec3<u32>(0u, u_input.d.x, u_input.b.x) & vec3<u32>(u_input.b.x, 59515u, u_input.d.x), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -6459i, global0.x, u_input.c), vec4<i32>(-27338i, -1i, 22117i, u_input.e)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-279f * 606f) - _wgslsmith_f_op_f32(step(2017f, -1111f))))));
    let var_2 = Struct_1(firstTrailingBit(abs(0u)), _wgslsmith_mod_i32(func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(59443u, 4294967295u, u_input.b.x), vec3<u32>(34285u, u_input.d.x, u_input.d.x)) | vec3<u32>(u_input.d.x, u_input.b.x, 63030u), vec4<i32>(~global0.x, firstLeadingBit(global0.x), 175i & u_input.a, u_input.a & 2147483647i)).d.x, global0.x << (_wgslsmith_clamp_u32(68404u & u_input.d.x, 46292u, 0u) % 32u)), max(u_input.b.x, _wgslsmith_clamp_u32(~u_input.b.x, u_input.d.x, ~u_input.d.x)) & abs(_wgslsmith_dot_vec2_u32(vec2<u32>(24512u, u_input.d.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(3271u, u_input.b.x), u_input.d, vec2<u32>(1u, u_input.b.x)))), global0.xxw);
    var var_3 = Struct_1(~min(_wgslsmith_sub_u32(72219u, u_input.d.x), ~35353u) >> (~var_2.a % 32u), u_input.e, ~func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.c, 1u, var_2.c) ^ vec3<u32>(u_input.b.x, u_input.b.x, 10142u), vec3<u32>(1u, 1u, 1u)), vec4<i32>(select(3082i, global0.x, var_0), global0.x, ~1i, _wgslsmith_clamp_i32(u_input.e, -66251i, 13141i))).a, (_wgslsmith_add_vec3_i32(~global0.yww, _wgslsmith_mult_vec3_i32(global0.ywz, vec3<i32>(-2147483647i, global0.x, var_2.b))) << (~(vec3<u32>(var_2.c, u_input.d.x, 4294967295u) | vec3<u32>(4294967295u, var_2.a, 4294967295u)) % vec3<u32>(32u))) & var_2.d);
    let var_4 = func_2(vec3<u32>(0u, u_input.b.x, reverseBits(reverseBits(min(var_3.a, var_3.a)))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.b, -18147i, _wgslsmith_mod_i32(var_3.d.x, -2147483647i), 1i), ~vec4<i32>(u_input.e, 1i, 34551i, var_3.d.x)));
    return var_2;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = true;
    global1 = array<vec2<u32>, 32>();
    let var_1 = _wgslsmith_mult_i32(firstTrailingBit(select(-13731i, 1i, arg_0.x & true)) ^ -3516i, func_2(~abs(vec3<u32>(4294967295u, 16728u, u_input.d.x) & vec3<u32>(0u, 1u, 1u)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, u_input.a, abs(arg_3.b), _wgslsmith_div_i32(arg_1.x, 31244i)), vec4<i32>(countOneBits(1i), 2221i, _wgslsmith_mult_i32(global0.x, arg_3.d.x), _wgslsmith_dot_vec4_i32(arg_1, arg_1)))).d.x);
    global1 = array<vec2<u32>, 32>();
    let var_2 = ~(~arg_1);
    return arg_3;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = false;
    global0 = select(vec4<i32>(arg_0.d.x, -21110i, arg_0.d.x, ~u_input.a) >> (select(vec4<u32>(~u_input.b.x, 4294967295u, min(arg_2.a, 3152u), firstTrailingBit(arg_1)), vec4<u32>(countOneBits(1u), abs(0u), 1u, max(arg_1, arg_1)), select(!vec4<bool>(var_0, true, false, var_0), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, false, false, true), false), any(vec4<bool>(false, var_0, var_0, var_0)))) % vec4<u32>(32u)), vec4<i32>(reverseBits(u_input.c), 1i, ~select(_wgslsmith_div_i32(global0.x, 2147483647i), u_input.c, any(vec3<bool>(false, var_0, var_0))), -2147483647i | _wgslsmith_div_i32(select(arg_2.d.x, -50647i, false), ~(-3295i))), vec4<bool>(all(vec2<bool>(any(vec4<bool>(var_0, false, var_0, var_0)), true)), !(any(vec4<bool>(var_0, var_0, true, true)) && any(vec4<bool>(false, false, var_0, false))), var_0, false));
    var var_1 = func_1();
    global0 = vec4<i32>(2147483647i, _wgslsmith_sub_i32(global0.x, -var_1.b) << ((_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, arg_1)), u_input.b) & _wgslsmith_add_u32(min(arg_2.a, 83914u), ~arg_2.a)) % 32u), global0.x, -arg_0.d.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f)), 2310f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -180f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-511f, -628f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-257f, -135f))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 106f, _wgslsmith_f_op_f32(max(-1602f, _wgslsmith_f_op_f32(789f * -661f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) - 406f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-250f, 319f, -196f, 1123f) - vec4<f32>(557f, 436f, -195f, 507f)) - vec4<f32>(-246f, -690f, 462f, -422f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-466f, 994f, -945f, -1784f)))))), true)));
    return any(!vec4<bool>(true, var_0, (false || var_0) && (1i >= var_1.b), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_6(func_5(vec3<bool>(false, false, all(vec4<bool>(true, false, false, false))), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, u_input.e, -1i, 45540i) ^ vec4<i32>(-2147483647i, 2147483647i, global0.x, global0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 11820i, global0.x, -18607i), vec4<i32>(global0.x, 1i, u_input.e, -26607i))), 68411u, func_1()), 4294967295u, Struct_1(~(~u_input.b.x), ~firstTrailingBit(u_input.a), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, 36006u), ~u_input.b.x), global0.xxx));
    global1 = array<vec2<u32>, 32>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1200f))), true)), 1103f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -900f) + 814f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(94187u, u_input.d.x, 1u, _wgslsmith_mult_u32(u_input.d.x, max(1u ^ u_input.d.x, 4294967295u))), ~u_input.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1556f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(578f * 705f)))))), ~vec2<i32>(0i, max(global0.x, 0i)));
}

