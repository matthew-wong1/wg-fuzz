struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<f32> {
    var var_0 = u_input.a;
    var_0 = firstLeadingBit(0i);
    let var_1 = select(!(!vec4<bool>(true, true, true, select(false, false, false))), select(!vec4<bool>(true, any(vec3<bool>(false, false, false)), true, any(vec4<bool>(true, false, true, false))), !vec4<bool>(2147483647i > u_input.a, true, true, true), vec4<bool>(!(-2147483647i <= u_input.a), false, true, true)), all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_2 = Struct_1(~vec4<u32>(10902u, 11291u, reverseBits(1051u), 21781u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1021f)), _wgslsmith_f_op_f32(abs(1719f)), _wgslsmith_f_op_f32(round(-762f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1464f, -1445f) * vec3<f32>(-1023f, -851f, 439f)), vec3<f32>(-1802f, -844f, -538f)))))), select(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), ~(-vec4<i32>(u_input.a, -1i, -28876i, -65111i)), var_1) ^ vec4<i32>(_wgslsmith_sub_i32(16995i, -1i), -11948i, firstTrailingBit(-16857i) >> (_wgslsmith_add_u32(12577u, u_input.c.x) % 32u), 3487i));
    var_0 = u_input.a;
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.b.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1083f)) - -1303f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(460f + -717f), var_2.b.x))) * var_2.b.x));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1131f, 1000f, -1280f), vec3<f32>(-109f, 997f, -553f))))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(1587f * 954f), 2352f, _wgslsmith_f_op_f32(f32(-1f) * -1223f)))));
    let var_1 = Struct_1(u_input.c, _wgslsmith_f_op_vec3_f32(func_3()), vec4<i32>(i32(-1i) * -5573i, 30773i, abs(countOneBits(2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), reverseBits(vec4<i32>(u_input.a, 34940i, 29936i, u_input.a)))) & ~_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, -23170i, u_input.a, 24380i)), vec4<i32>(2147483647i, -1404i, -23412i, -55157i)));
    let var_2 = var_1.a | select(~(~vec4<u32>(arg_0, u_input.d.x, arg_0, 0u)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, 1u, var_1.a.x), ~u_input.c), var_1.a), any(vec2<bool>(true, true)) | (-1324f == _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false))));
    var var_3 = _wgslsmith_add_i32(1i, -(~0i)) <= _wgslsmith_clamp_i32(max(-2147483647i, ~(u_input.a << (46175u % 32u))), -2147483647i, firstLeadingBit(3525i) ^ ~_wgslsmith_add_i32(var_1.c.x, -27024i));
    var var_4 = var_1;
    return Struct_1(~(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(var_4.a, vec4<u32>(var_2.x, 19713u, 30800u, 11554u)), ~u_input.c)), vec3<f32>(-1455f, _wgslsmith_f_op_f32(-2631f - var_4.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1512f)), -reverseBits(var_1.c));
}

fn func_1() -> vec3<f32> {
    var var_0 = func_2(u_input.b);
    var var_1 = vec3<u32>(~max(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a.x, u_input.c.x), u_input.d), ~0u), _wgslsmith_add_u32(var_0.a.x, var_0.a.x), max(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, u_input.b, 18714u), _wgslsmith_mod_u32(u_input.b, 1u), 5681u), u_input.c.xzx), var_0.a.x));
    let var_2 = reverseBits(vec3<u32>(~u_input.d.x << (countOneBits(59385u) % 32u), var_0.a.x, 1u) ^ ~((u_input.c.wxx & var_0.a.xww) ^ vec3<u32>(4294967295u, var_0.a.x, var_1.x)));
    var var_3 = _wgslsmith_mult_vec4_u32(func_2(_wgslsmith_mod_u32((45035u >> (var_0.a.x % 32u)) << (57005u % 32u), select(var_0.a.x, func_2(41989u).a.x, true))).a, u_input.c);
    var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(13205u, 1041u, 1u, var_0.a.x)), _wgslsmith_dot_vec2_u32(u_input.d, u_input.c.zw), _wgslsmith_div_u32(var_3.x, var_2.x)), var_0.a.xxz), 18850u, ~62185u, min(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, 0u, var_1.x), u_input.c), abs(var_3.x)), var_3.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-362f, var_0.b.x)), _wgslsmith_f_op_f32(max(185f, var_0.b.x)), _wgslsmith_div_f32(-2085f, var_0.b.x)))), _wgslsmith_add_vec4_i32(var_0.c, var_0.c) ^ var_0.c);
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = func_2(firstLeadingBit(abs(0u)));
    var var_1 = _wgslsmith_mod_vec3_u32(select(min(~var_0.a.xwz, u_input.c.wxx), arg_0.a.zyw ^ select(var_0.a.wxx, vec3<u32>(1u, 41290u, u_input.d.x), vec3<bool>(false, true, true)), all(vec4<bool>(true, true, true, true))), u_input.c.www & vec3<u32>(select(arg_0.a.x, 33185u, true), 15537u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 14181u, 48241u), vec3<u32>(u_input.d.x, var_0.a.x, arg_0.a.x)))) | vec3<u32>(~18106u, _wgslsmith_sub_u32(arg_0.a.x, u_input.c.x), firstLeadingBit(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 4294967295u, 1u, u_input.d.x), var_0.a))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f));
    let var_3 = false;
    let var_4 = ~(arg_0.c.xxw >> (~(~abs(var_0.a.yyz)) % vec3<u32>(32u)));
    return func_2(select(func_2(~_wgslsmith_add_u32(u_input.b, u_input.d.x)).a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.x, 1u, _wgslsmith_clamp_u32(20651u, var_1.x, 79147u), min(var_0.a.x, u_input.c.x)), abs(~vec4<u32>(1u, arg_0.a.x, var_0.a.x, 0u))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(u_input.c << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, 4294967295u, 4294967295u), u_input.c) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())), -_wgslsmith_sub_vec4_i32(~vec4<i32>(46558i, u_input.a, u_input.a, -1i), -vec4<i32>(u_input.a, -21368i, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_1()).zz))));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.c.xx, vec2<i32>(-1i, var_0.c.x) ^ (select(var_0.c.yz, vec2<i32>(var_0.c.x, 2147483647i), vec2<bool>(false, true)) ^ _wgslsmith_mod_vec2_i32(var_0.c.wx, var_0.c.wy))), 37303i, abs(_wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec2_i32(func_2(var_0.a.x).c.yw, vec2<i32>(var_0.c.x, 1i) & vec2<i32>(-3276i, 5704i)))), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(u_input.a), ~(-264i), ~42871i, firstLeadingBit(-25060i)) & countOneBits(vec4<i32>(var_0.c.x, 1i, 1i, var_0.c.x) >> (var_0.a % vec4<u32>(32u))), ~(~vec4<i32>(u_input.a, -30347i, var_0.c.x, 1i)) >> (vec4<u32>(reverseBits(0u), u_input.c.x, var_0.a.x, 1u) % vec4<u32>(32u))));
    let var_2 = var_0.b;
    var_0 = func_4(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x << (1662u % 32u), 13222u, _wgslsmith_dot_vec4_u32(vec4<u32>(19327u, var_0.a.x, u_input.c.x, u_input.d.x), vec4<u32>(var_0.a.x, u_input.c.x, var_0.a.x, 1u)), 0u ^ u_input.c.x), firstTrailingBit(_wgslsmith_div_vec4_u32(u_input.c, var_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(608f, var_0.b.x, 300f), _wgslsmith_f_op_vec3_f32(-var_0.b), -2144f >= var_0.b.x))), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, var_1.x, u_input.a, u_input.a), var_0.c, vec4<i32>(var_0.c.x, -2147483647i, 2147483647i, -1i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x))) * var_0.b.xy));
    var var_3 = func_2(~(~1u));
    let var_4 = func_2(~(~(var_3.a.x >> (var_0.a.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(~u_input.b, var_4.a.x), var_4.a.x), func_4(func_2(~var_3.a.x), _wgslsmith_f_op_vec2_f32(trunc(var_3.b.xx))).c, 4294967295u, -11972i << ((~(65008u >> (var_4.a.x % 32u)) << (firstLeadingBit(0u) % 32u)) % 32u));
}

