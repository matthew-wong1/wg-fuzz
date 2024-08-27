struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-679f, -1218f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(678f, -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -805f))), _wgslsmith_f_op_f32(107f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f + -1597f))), -562f) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1612f + -1224f) - _wgslsmith_f_op_f32(f32(-1f) * -579f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -348f) - _wgslsmith_f_op_f32(f32(-1f) * -717f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201f + 1493f)) + 323f), 329f));
    return -u_input.b;
}

fn func_3() -> i32 {
    var var_0 = Struct_3(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-reverseBits(vec3<i32>(u_input.b, 0i, u_input.b)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, 61388i), vec3<i32>(73954i, u_input.b, -6233i)), -vec3<i32>(u_input.b, -15170i, u_input.b)), -abs(vec3<i32>(u_input.b, u_input.b, u_input.b))), firstTrailingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(1i, u_input.b, u_input.b)), -vec3<i32>(36384i, -4441i, 0i), -vec3<i32>(u_input.b, u_input.b, 1i)))), vec3<u32>(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 43824u), ~vec4<u32>(u_input.c.x, 14028u, u_input.c.x, 44205u)), firstTrailingBit(vec4<u32>(u_input.a, 0u, u_input.a, u_input.c.x)) ^ ~vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, 0u)), _wgslsmith_dot_vec3_u32(~(~u_input.c), u_input.c), _wgslsmith_clamp_u32(~(u_input.c.x | u_input.c.x), _wgslsmith_add_u32(~0u, 0u), _wgslsmith_mod_u32(20205u, abs(65716u)))), Struct_1(vec4<i32>(max(-u_input.b, ~u_input.b), u_input.b & _wgslsmith_div_i32(u_input.b, -17338i), u_input.b, u_input.b), ~_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, 2147483647i)), vec2<i32>(u_input.b, 2147483647i)), vec4<i32>(countOneBits(17799i), -1i & u_input.b, u_input.b, func_1(u_input.c.xy, u_input.a)) << (abs(~vec4<u32>(0u, 45588u, u_input.c.x, u_input.a)) % vec4<u32>(32u))));
    var var_1 = Struct_1(max(min(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.b, var_0.a.x, var_0.a.x) | var_0.c.c, min(var_0.c.a, var_0.c.a)), vec4<i32>(reverseBits(-2147483647i), 0i << (var_0.b.x % 32u), -33044i, u_input.b)), vec4<i32>(firstTrailingBit(firstLeadingBit(48381i)), -u_input.b, u_input.b, u_input.b)), -vec2<i32>(~var_0.a.x, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-2147483647i, u_input.b)), vec2<i32>(var_0.c.a.x, 2147483647i))), var_0.c.c);
    let var_2 = Struct_3(abs(abs(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.b, var_1.b.x), var_0.c.a.wzy))) << (select(min(~u_input.c, ~vec3<u32>(var_0.b.x, 22891u, var_0.b.x)), abs(var_0.b), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(true, true, false))) % vec3<u32>(32u)), countOneBits(firstLeadingBit(_wgslsmith_clamp_vec3_u32(reverseBits(var_0.b), u_input.c, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, 62204u), u_input.c)))), Struct_1(var_1.c, vec2<i32>(i32(-1i) * -var_0.c.a.x, ~_wgslsmith_dot_vec3_i32(var_0.c.a.wzx, vec3<i32>(var_0.a.x, var_0.a.x, u_input.b))), vec4<i32>(-1i) * -select(vec4<i32>(23509i, var_1.b.x, 0i, 743i), var_1.c, vec4<bool>(true, true, false, false))));
    var var_3 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(min(7999i, var_1.c.x) | min(u_input.b, 2147483647i), 4904i), _wgslsmith_add_i32(~0i, -(~var_2.c.c.x)), _wgslsmith_dot_vec2_i32(select(var_2.a.zz, vec2<i32>(var_0.c.c.x, u_input.b), vec2<bool>(false, false)) | _wgslsmith_mult_vec2_i32(var_0.a.yz, vec2<i32>(var_2.c.c.x, 2147483647i)), var_2.c.c.wx), -abs(-1i)), vec2<i32>(-1i, -(abs(var_2.a.x) | _wgslsmith_sub_i32(2147483647i, 2147483647i))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.c.x, -1744i, 1i, var_2.c.b.x) << (firstTrailingBit(vec4<u32>(37698u, var_0.b.x, u_input.a, 24740u)) % vec4<u32>(32u)), ~countOneBits(var_0.c.c), vec4<i32>(-var_2.c.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.x, var_2.c.c.x, -2147483647i), var_0.a), ~var_2.c.a.x, -var_1.c.x)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -359f) - -903f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 593f), -1288f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, -492f, false)), -1201f)))), var_2.c.a.xx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), Struct_1((vec4<i32>(25415i, var_3.a.x, 22492i, -13319i) & vec4<i32>(7770i, -33948i, -1i, u_input.b)) & var_3.a, firstTrailingBit(vec2<i32>(var_1.c.x, 1i)), _wgslsmith_div_vec4_i32(~vec4<i32>(-11574i, 3813i, 2147483647i, 0i), vec4<i32>(_wgslsmith_div_i32(-1i, var_2.a.x), u_input.b, var_0.a.x, u_input.b))));
    return _wgslsmith_add_i32(var_0.a.x, u_input.b);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -2553f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-532f + 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(trunc(-697f))))), select(vec2<i32>(~(-arg_0), abs(12322i ^ arg_0)), ~countOneBits(max(vec2<i32>(6251i, 24721i), vec2<i32>(u_input.b, u_input.b))), false), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-572f, 373f, -632f, -832f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 547f, -132f, -1113f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(147f, -724f, 1000f, -1190f))))))))), Struct_1(vec4<i32>(-abs(1i), ~arg_0 | 2147483647i, i32(-1i) * -arg_0, -min(-59549i, 25181i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, func_3()), vec2<i32>(-u_input.b, 1i)), _wgslsmith_div_vec4_i32(-(vec4<i32>(28639i, u_input.b, -28048i, arg_0) | vec4<i32>(41405i, u_input.b, 13060i, -29857i)), -reverseBits(vec4<i32>(arg_0, arg_0, u_input.b, u_input.b)))));
    var var_1 = vec2<bool>(true, any(vec2<bool>(false, select(arg_0, var_0.b.x, false) <= abs(arg_0))));
    let var_2 = -abs(0i) << (u_input.c.x % 32u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2404f - var_0.c.x)) + var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(363f)) + 1010f)));
    return Struct_1(var_0.d.a, var_0.b, ~max(var_0.d.c, var_0.d.c));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = !all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_1 = ~_wgslsmith_sub_vec4_u32(~countOneBits(~vec4<u32>(u_input.c.x, 94178u, 51782u, arg_1.x)), reverseBits(abs(vec4<u32>(arg_1.x, 0u, u_input.c.x, u_input.a) << (vec4<u32>(1128u, 3409u, 0u, arg_1.x) % vec4<u32>(32u)))));
    var var_2 = 453f;
    var var_3 = min(2147483647i, 2147483647i);
    let var_4 = Struct_3(~_wgslsmith_div_vec3_i32(-vec3<i32>(-20321i, -25538i, u_input.b), abs(arg_2.a.wxw)) & arg_2.c.yxy, reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(42810u, _wgslsmith_mod_u32(var_1.x, arg_1.x), arg_1.x), _wgslsmith_sub_vec3_u32(var_1.yww, firstLeadingBit(var_1.xwz)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 10507u, u_input.a), vec3<u32>(var_1.x, u_input.a, 4294967295u)))), Struct_1(-(~arg_0), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-10332i, arg_2.c.x), vec2<i32>(-1i) * -vec2<i32>(arg_2.c.x, arg_0.x)), arg_2.a));
    return Struct_1(arg_0, func_2(37115i).c.zw, abs(arg_0));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = func_2(u_input.b);
    var var_1 = !select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(floor(1057f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) * _wgslsmith_f_op_f32(arg_1 - 2269f)), select(!any(vec2<bool>(true, false)), true & all(vec2<bool>(false, false)), true));
    var var_2 = Struct_2(-1515f, -select(func_2(firstTrailingBit(arg_0.c.x)).c.xw, select(func_2(var_0.a.x).c.xy, vec2<i32>(2147483647i, 2147483647i) ^ arg_0.a.wy, true), arg_1 <= _wgslsmith_f_op_f32(-240f + arg_1)), vec4<f32>(arg_1, -392f, 255f, -767f), func_2(-25111i));
    var_2 = Struct_2(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -920f) - _wgslsmith_f_op_f32(round(1205f)))))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_2.d.a.x, var_0.b.x), min(u_input.b, 2147483647i)), -_wgslsmith_div_vec2_i32(arg_0.c.yx, vec2<i32>(arg_0.b.x, u_input.b))), var_2.d.c.zw ^ max(var_0.a.yw, arg_0.a.ww)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(var_2.c)), _wgslsmith_f_op_vec4_f32(-var_2.c), arg_0.c.x < var_2.b.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-620f, arg_1, 913f, 204f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, -368f, arg_1, -427f) * var_2.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a, var_2.a, 537f, -331f)))))), arg_0);
    var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(973f, 251f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(512f - var_2.a)))), -(~vec2<i32>(11465i, 28047i) ^ ~var_2.d.c.xz) ^ vec2<i32>(1i, var_2.b.x), vec4<f32>(1000f, _wgslsmith_f_op_f32(114f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)), _wgslsmith_f_op_f32(round(var_2.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1710f))), arg_1), arg_0);
    return select(any(!vec4<bool>(select(false, false, true), all(vec3<bool>(true, true, true)), true, true)), true, any(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)))));
}

fn func_6(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(2139u), 36834u), firstLeadingBit(u_input.c.zz));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(932f, 808f), _wgslsmith_f_op_f32(ceil(950f)), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -197f))))), -173f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(539f)) * _wgslsmith_f_op_f32(-828f - -809f)) + -694f), -704f, !(!select(false, true, true)))), -277f);
    return Struct_3(abs(min(abs(vec3<i32>(74i, u_input.b, -2147483647i)), vec3<i32>(u_input.b, u_input.b, u_input.b))) | _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b, -2147483647i, 2147483647i), abs(vec3<i32>(u_input.b, 2147483647i, u_input.b))), vec3<i32>(i32(-1i) * -1405i, i32(-1i) * -2147483647i, u_input.b)), ~vec3<u32>(~25409u, u_input.a, _wgslsmith_dot_vec2_u32(select(var_0, vec2<u32>(1u, 46003u), vec2<bool>(false, true)), vec2<u32>(7385u, var_0.x) << (u_input.c.xy % vec2<u32>(32u)))), func_2(countOneBits(u_input.b ^ -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (32169i << (firstLeadingBit(~1u) % 32u)) >> (1u % 32u);
    var var_1 = 2147483647i;
    var_1 = u_input.b;
    var_1 = max(_wgslsmith_add_i32(0i, i32(-1i) * -2147483647i), _wgslsmith_clamp_i32(-48542i, func_1(u_input.c.zz, ~u_input.c.x), -1i));
    var var_2 = func_6(vec2<bool>(func_5(func_4(~vec4<i32>(0i, u_input.b, var_0, var_0), vec2<u32>(u_input.c.x, u_input.a), func_2(u_input.b)), -1000f), any(vec4<bool>(true, true, true, true))));
    var_2 = Struct_3(~vec3<i32>(_wgslsmith_div_i32(var_0 | -2147483647i, var_0 ^ 2147483647i), -var_0, -max(u_input.b, 0i)), u_input.c, var_2.c);
    var_2 = func_6(vec2<bool>(func_5(var_2.c, 301f), all(vec2<bool>(false, false)) | !any(vec4<bool>(false, true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1362f, -1494f, 357f, -654f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1613f, 156f, 367f, 2261f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-258f, -1000f, -301f, -275f), vec4<f32>(703f, -1000f, 1213f, -757f))))), _wgslsmith_clamp_vec2_i32(-(~_wgslsmith_mult_vec2_i32(var_2.a.xz, var_2.a.zx)), var_2.a.zx, var_2.a.xy));
}

