struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = vec2<i32>(countOneBits(-reverseBits(u_input.b)), 3503i) << (vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.c.x, arg_0.b.b.x, arg_1.x))), ~(~u_input.d)), arg_0.b.b.x) % vec2<u32>(32u));
    let var_2 = select(var_0.b.a, abs(max(firstTrailingBit(~arg_0.a.b), u_input.c | arg_0.a.b)), true);
    var var_3 = _wgslsmith_mod_vec4_i32((select(vec4<i32>(u_input.b, var_1.x, 0i, -34707i), countOneBits(vec4<i32>(-5046i, u_input.b, var_1.x, -2147483647i)), vec4<bool>(true, true, true, true)) ^ min(-vec4<i32>(-21712i, -2147483647i, 0i, var_1.x), vec4<i32>(u_input.b, -62774i, var_1.x, -25155i) << (vec4<u32>(1u, arg_2.a.x, arg_0.a.b.x, arg_1.x) % vec4<u32>(32u)))) >> (select(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.a.a, var_0.b.a, arg_2.a), u_input.c), var_0.b.b, vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(~var_1.x, countOneBits(var_1.x), _wgslsmith_mod_i32(u_input.b, var_1.x), 17704i >> (arg_2.b.x % 32u)), (vec4<i32>(36523i, 2147483647i, -47712i, var_1.x) | vec4<i32>(2147483647i, u_input.b, -1i, 1i)) ^ countOneBits(vec4<i32>(-15902i, -2433i, u_input.b, 3986i))), ~(firstLeadingBit(vec4<i32>(0i, u_input.b, u_input.b, 970i)) << (vec4<u32>(465u, 4294967295u, arg_2.a.x, arg_1.x) % vec4<u32>(32u))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))));
    let var_4 = select(~(~(~vec4<i32>(var_3.x, 1i, var_3.x, u_input.b)) << (vec4<u32>(~arg_2.a.x, 29243u, 0u, firstTrailingBit(arg_1.x)) % vec4<u32>(32u))), -reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, -14056i), vec3<i32>(var_3.x, var_3.x, -24478i)), var_1.x, -25395i, ~(-52650i))), select(true, all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), all(vec4<bool>(true, true, false, true)))), true));
    return u_input.c.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: f32) -> vec3<bool> {
    let var_0 = true;
    var var_1 = Struct_1(countOneBits(select(vec4<u32>(func_3(Struct_2(Struct_1(u_input.c, vec4<u32>(u_input.c.x, 4294967295u, 3282u, u_input.a.x), -655f), Struct_1(u_input.c, u_input.c, arg_2), vec2<f32>(244f, -973f)), vec2<u32>(u_input.c.x, 1u), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 86018u), -757f)), u_input.a.x, ~67382u, u_input.c.x), ~vec4<u32>(38589u, 31670u, 4294967295u, u_input.d.x), arg_0.x)), _wgslsmith_div_vec4_u32(countOneBits(u_input.c), reverseBits(min(vec4<u32>(4294967295u, 0u, u_input.a.x, 4294967295u), u_input.c)) << (reverseBits(select(vec4<u32>(110208u, u_input.a.x, u_input.d.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.c.x, u_input.a.x), true)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1901f + _wgslsmith_f_op_f32(arg_2 * -2029f))));
    var var_2 = var_1.c;
    var var_3 = Struct_2(Struct_1(~(~vec4<u32>(7872u, var_1.a.x, 4294967295u, var_1.b.x) << (~vec4<u32>(u_input.d.x, 482u, 31919u, u_input.d.x) % vec4<u32>(32u))), vec4<u32>(82520u, ~func_3(Struct_2(Struct_1(u_input.c, u_input.c, -1528f), Struct_1(var_1.a, vec4<u32>(1u, 32445u, 4294967295u, u_input.d.x), arg_2), vec2<f32>(arg_2, var_1.c)), var_1.b.zx, Struct_1(vec4<u32>(u_input.d.x, var_1.a.x, 18813u, 4294967295u), vec4<u32>(u_input.a.x, 50423u, var_1.b.x, var_1.b.x), 1508f)), _wgslsmith_dot_vec2_u32(u_input.c.zx, abs(vec2<u32>(1u, 4294967295u))), u_input.d.x), _wgslsmith_f_op_f32(1000f * arg_2)), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 1u, 1u, 42862u) >> (firstLeadingBit(var_1.a) % vec4<u32>(32u)), ~var_1.a, u_input.c), select(vec4<u32>(45293u, 9149u, u_input.a.x, u_input.a.x) & max(var_1.a, vec4<u32>(1u, 40359u, 65425u, u_input.c.x)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.d.x, 0u, var_1.a.x), vec4<u32>(var_1.b.x, var_1.a.x, var_1.a.x, u_input.c.x), var_1.b)), any(vec2<bool>(false, false))), 129f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(440f, -995f), vec2<f32>(-2420f, var_1.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 700f)), vec2<bool>(false, var_0))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, -1501f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, arg_2) - vec2<f32>(arg_2, -393f)), select(arg_1, vec2<bool>(var_0, true), arg_1))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2105f, -2413f, 348f, 288f)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -941f, -1000f, 1311f) - vec4<f32>(arg_2, var_3.c.x, -953f, 2180f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-368f, arg_2, -1704f, var_1.c) * vec4<f32>(-269f, 2276f, -1313f, var_3.b.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-777f)), _wgslsmith_f_op_f32(step(var_3.a.c, var_3.b.c)), 197f, _wgslsmith_f_op_f32(-var_3.a.c)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.b.c, -1326f, var_1.c, 1032f))))))));
    return vec3<bool>(all(select(arg_0, vec3<bool>(4294967295u == u_input.a.x, !arg_1.x, false && arg_1.x), true)), true, false);
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-1132f - arg_0.x);
    var var_1 = 64664u;
    let var_2 = true;
    var var_3 = !select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, true, false)), !vec3<bool>(var_2, var_2, true), var_2), !vec3<bool>(var_2, true, false), !var_2), !(!(!vec3<bool>(var_2, false, var_2))), !select(func_2(vec3<bool>(var_2, true, var_2), vec2<bool>(true, true), arg_0.x), vec3<bool>(true, true, var_2), var_2));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -291f);
    return Struct_1(vec4<u32>(u_input.a.x ^ ~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.c.xyy, ~u_input.c.yzz), u_input.d ^ vec3<u32>(u_input.c.x, u_input.a.x, u_input.a.x)), 4294967295u, min(~u_input.a.x >> (u_input.c.x % 32u), 40044u)), vec4<u32>(countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c.ww, u_input.c.yx), ~u_input.c.x)), 4294967295u, u_input.c.x, _wgslsmith_sub_u32(func_3(Struct_2(Struct_1(vec4<u32>(1u, 21297u, u_input.a.x, 0u), u_input.c, var_0), Struct_1(u_input.c, vec4<u32>(4294967295u, u_input.d.x, u_input.a.x, 57034u), var_0), arg_0.xz), vec2<u32>(0u, u_input.a.x), Struct_1(u_input.c, vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.d.x), 1171f)), 1u) & ~countOneBits(u_input.c.x)), -120f);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = var_0;
    let var_2 = Struct_2(var_1.a, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_1.b.c, var_0.b.c, -1000f)))))), arg_2.c);
    var var_3 = func_1(vec4<f32>(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.c.x, -281f, var_0.a.c, var_0.c.x)))).c), _wgslsmith_f_op_f32(ceil(-187f)), var_1.c.x, arg_0.b.c));
    var var_4 = Struct_2(Struct_1(vec4<u32>(arg_2.a.a.x, var_0.a.b.x ^ arg_3.x, _wgslsmith_sub_u32(var_2.b.a.x, 4294967295u), 50138u) & ~vec4<u32>(arg_0.b.b.x, 50761u, var_2.a.a.x, u_input.d.x), vec4<u32>(reverseBits(var_0.a.b.x), _wgslsmith_div_u32(~4703u, 1u), ~4454u, arg_0.b.a.x), 1535f), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1616f, -1000f, arg_2.b.c, 1212f)))), arg_0.c);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -833f)))));
    let var_1 = func_4(Struct_2(func_1(vec4<f32>(var_0, _wgslsmith_f_op_f32(trunc(-1425f)), _wgslsmith_f_op_f32(select(147f, var_0, true)), var_0)), Struct_1(u_input.c, _wgslsmith_mult_vec4_u32(~u_input.c, u_input.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1000f)), -102f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -492f), -1000f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2034f, var_0))))), select(vec3<bool>(false, true, false), vec3<bool>(u_input.c.x < ~0u, true, true), false), Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 141f, var_0, var_0))), Struct_1(u_input.c, vec4<u32>(~u_input.d.x, u_input.d.x, 0u, ~33719u), _wgslsmith_f_op_f32(-var_0)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0), _wgslsmith_f_op_f32(trunc(-1322f)))), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c));
    let var_2 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0, -1000f, var_0))))), Struct_1(vec4<u32>(_wgslsmith_add_u32(u_input.c.x, 21840u) >> (~51206u % 32u), 82946u, var_1.b.x, 1u), ~(~vec4<u32>(17105u, var_1.a.x, 8590u, var_1.a.x)), var_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 757f) + vec2<f32>(-135f, -1000f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-110f, -214f) - vec2<f32>(var_1.c, -1452f)))))));
    let var_3 = Struct_1(var_1.a, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-908f)))));
    let var_4 = max(min(_wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(20743i, 2147483647i), vec2<bool>(true, true)), ~(vec2<i32>(-40497i, u_input.b) ^ vec2<i32>(u_input.b, 0i))), ~min(vec2<i32>(1i, 0i), -vec2<i32>(2147483647i, u_input.b))), _wgslsmith_div_vec2_i32(vec2<i32>(~u_input.b, u_input.b >> (4294967295u % 32u)), ~vec2<i32>(1i, 3927i)) << (~vec2<u32>(u_input.a.x, ~var_1.a.x) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, vec3<u32>(~func_3(var_2, u_input.c.xy, var_3), firstLeadingBit(1u), var_2.a.a.x), select(vec4<i32>(u_input.b, ~_wgslsmith_sub_i32(-2147483647i, u_input.b), _wgslsmith_div_i32(35619i, var_4.x), u_input.b), ~max(~vec4<i32>(-2147483647i, 51213i, 2147483647i, u_input.b), vec4<i32>(var_4.x, 20102i, -12375i, var_4.x)), true), 19221u, vec4<f32>(209f, var_1.c, -1188f, -744f));
}

