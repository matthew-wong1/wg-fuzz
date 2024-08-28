struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = u_input.a.x;
    var_0 = ~(~27567u);
    let var_1 = abs(u_input.a.yz ^ vec2<u32>(~min(43270u, u_input.a.x), ~firstLeadingBit(9000u)));
    let var_2 = Struct_3(_wgslsmith_dot_vec2_i32(max(select(vec2<i32>(-2147483647i, 37694i), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -26306i)), any(vec3<bool>(false, true, false))), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), -vec2<i32>(1i, 1004i), -vec2<i32>(47599i, -31941i))), -vec2<i32>(1i, 1536i)), vec3<u32>(var_1.x, 4294967295u, _wgslsmith_mod_u32(4294967295u, ~(0u >> (u_input.a.x % 32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-444f, 1000f, 1153f, -1863f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-378f, -558f, 829f, 488f) - vec4<f32>(1573f, -293f, 741f, -730f)))) + vec4<f32>(1f, 1f, 1f, 1f)), true, Struct_2(any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(704f * -547f)), true, firstTrailingBit(vec3<i32>(-1i, -3126i, 19510i)) | select(vec3<i32>(-49040i, -2147483647i, 45483i), vec3<i32>(-1i, 0i, 5207i), true))));
    var var_3 = countOneBits(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(var_2.e.b.c), abs(vec3<i32>(var_2.a, var_2.e.b.c.x, var_2.e.b.c.x))), var_2.e.b.c.x), countOneBits(reverseBits(var_2.a)) | _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, var_2.e.b.c.x), -var_2.e.b.c.x), var_2.e.b.c.x | (-41704i >> (_wgslsmith_clamp_u32(16311u, 1u, 42250u) % 32u)), var_2.e.b.c.x));
    return 81564u;
}

fn func_2(arg_0: f32) -> vec3<i32> {
    var var_0 = ~_wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(38622u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 55805u, u_input.a.x, u_input.a.x))) << (~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(func_3(), abs(~u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.xy) << (~u_input.a.x % 32u), u_input.a.x));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(1107f)), select(-(19878i << (u_input.a.x % 32u)) < _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-30311i, 2147483647i)), 74044i >> (u_input.a.x % 32u), firstTrailingBit(-18196i)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false))), true), _wgslsmith_mod_vec3_i32(select(~vec3<i32>(32974i, 1392i, -42681i), vec3<i32>(1i, ~1i, -4029i), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)), vec3<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(33965i, 2147483647i), vec2<i32>(-1i, 16299i), vec2<bool>(true, true)), vec2<i32>(0i, -1i)), -2147483647i, -1i)));
    var var_2 = var_1.a;
    let var_3 = Struct_2(any(vec3<bool>(u_input.a.x != 68765u, true, select(true, all(vec2<bool>(var_1.b, false)), true))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a, -574f)) + -888f))), var_1.b, vec3<i32>(_wgslsmith_mod_i32(-43442i, _wgslsmith_mult_i32(var_1.c.x, var_1.c.x)), var_1.c.x, 2147483647i)));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_div_f32(var_3.b.a, -710f), 1261f);
    return var_1.c;
}

fn func_4(arg_0: vec3<i32>) -> vec3<i32> {
    var var_0 = false;
    var var_1 = Struct_3(_wgslsmith_add_i32(func_2(-1522f).x, min(_wgslsmith_div_i32(arg_0.x, firstTrailingBit(arg_0.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(36346i, 50198i, arg_0.x)), 1i))), vec3<u32>(~(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), 7444u, abs(1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1718f, 852f, -1761f, 1632f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(659f, 128f, -375f, -354f) + vec4<f32>(-371f, 648f, -636f, 409f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2706f, 1790f, -873f, -195f))))), false, Struct_2(true, Struct_1(-395f, all(vec4<bool>(false, false, false, false)) | all(vec3<bool>(false, true, false)), arg_0)));
    var_0 = any(vec3<bool>(false, (var_1.e.b.b || var_1.e.a) | var_1.d, _wgslsmith_div_i32(arg_0.x, ~var_1.e.b.c.x) == select(-var_1.a, 2147483647i << (var_1.b.x % 32u), var_1.e.b.b)));
    var var_2 = ~u_input.a;
    let var_3 = Struct_3(i32(-1i) * -34449i, reverseBits(var_1.b), var_1.c, var_1.e.b.b, var_1.e);
    return ~(-vec3<i32>(_wgslsmith_mult_i32(var_1.e.b.c.x, arg_0.x) & 10902i, -_wgslsmith_mod_i32(28516i, arg_0.x), var_1.a));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> vec3<i32> {
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(arg_0.a, false, min(func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -419f))), vec3<i32>(~(~(-8885i)), _wgslsmith_mod_i32(arg_0.c.x, 0i), i32(-1i) * -2147483647i)));
    var_0 = _wgslsmith_dot_vec3_u32(~abs(~arg_1.zwx) << (arg_1.xwx % vec3<u32>(32u)), abs(arg_1.wwy));
    var_1 = arg_0;
    var_1 = Struct_1(949f, var_1.b, -(~(-(~vec3<i32>(arg_0.c.x, -31563i, -20229i)))));
    return vec3<i32>(firstTrailingBit(~_wgslsmith_clamp_i32(-1i, arg_0.c.x, -1i)), arg_0.c.x ^ _wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(-2147483647i, arg_0.c.x, arg_0.c.x)), 1i) << (~(~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.a.x, arg_1.x)) | vec3<u32>(arg_1.x, 17342u >> (arg_1.x % 32u), select(u_input.a.x, 0u, true))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-699f, 897f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1208f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1485f - -1068f))))));
    let var_2 = vec4<u32>(0u, 1u, 64692u, u_input.a.x);
    var var_3 = Struct_1(var_1.x, select(true != !(6541u != u_input.a.x), any(vec4<bool>(true, true, true, true)), true), _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, select(-19894i, 1i, true), _wgslsmith_div_i32(4078i, 2147483647i)), ~func_1(Struct_1(-1000f, true, vec3<i32>(-6165i, 9139i, -1i)), vec4<u32>(var_2.x, u_input.a.x, var_2.x, u_input.a.x))) >> ((firstLeadingBit(select(u_input.a, vec3<u32>(0u, u_input.a.x, var_2.x), true)) >> (~var_2.yyw % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_4 = vec2<f32>(var_3.a, 1957f);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_3.c.x, var_3.c.x, 0i, 0i), vec4<i32>(var_3.c.x, var_3.c.x, var_3.c.x, var_3.c.x))) & ~(select(vec4<i32>(0i, var_3.c.x, var_3.c.x, -2147483647i), vec4<i32>(16338i, var_3.c.x, var_3.c.x, var_3.c.x), vec4<bool>(true, true, var_3.b, var_3.b)) ^ vec4<i32>(10772i, -2147483647i, var_3.c.x, 5573i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.a))), -1701f, false)), _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, var_2.x, var_2.x), vec3<u32>(var_2.x, 3905u, u_input.a.x))), ~u_input.a), _wgslsmith_sub_u32(var_2.x, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 60954u) >> (u_input.a.zx % vec2<u32>(32u)), u_input.a.zy))));
}

