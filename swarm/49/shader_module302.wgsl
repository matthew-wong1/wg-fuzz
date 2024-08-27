struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: Struct_4,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> bool {
    let var_0 = vec2<bool>(all(vec4<bool>(true, true, select(true, false, true), true)), true);
    var var_1 = select(reverseBits(vec3<u32>(~(~83338u), 12974u, select(7627u, 4294967295u, true))), vec3<u32>(4546u, _wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, u_input.c))), 4294967295u), !select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, false, var_0.x), select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, false, var_0.x), var_0.x)), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), any(vec4<bool>(true, true, true, var_0.x))), !var_0.x | var_0.x));
    var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(28380u, u_input.b.x, u_input.a) >> (vec3<u32>(4294967295u, var_1.x, 1u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(max(vec3<u32>(var_1.x, var_1.x, 25802u), vec3<u32>(var_1.x, u_input.b.x, u_input.c)), ~vec3<u32>(1u, 0u, var_1.x))), ~vec3<u32>(u_input.a ^ 1u, ~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 42196u, var_1.x), vec4<u32>(0u, var_1.x, 1u, u_input.c)))), ~35237u, _wgslsmith_clamp_u32(firstTrailingBit(firstLeadingBit(u_input.c)), _wgslsmith_mult_u32(var_1.x, (6854u >> (var_1.x % 32u)) | 4294967295u), ~1u ^ max(var_1.x, ~4294967295u)));
    let var_2 = ~u_input.c;
    var var_3 = 385f;
    return any(select(!(!select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, false, false), false)), vec3<bool>(var_0.x, all(select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true))), !var_0.x), vec3<bool>(all(!vec2<bool>(var_0.x, var_0.x)), var_0.x, any(vec2<bool>(true, true)))));
}

fn func_2() -> vec3<i32> {
    var var_0 = select(vec4<bool>(true, func_3(), !(1i == _wgslsmith_sub_i32(u_input.d, u_input.d)), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, any(vec2<bool>(false, true)), select(false, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)), !vec4<bool>(0i <= select(u_input.d, u_input.d, false), true, select(select(false, true, false), true, true), true));
    var_0 = vec4<bool>(var_0.x, !(!any(vec2<bool>(false, true))), var_0.x, var_0.x);
    let var_1 = Struct_3(Struct_2(Struct_1(u_input.c)));
    var var_2 = Struct_5(vec4<u32>(~24278u >> (var_1.a.a.a % 32u), 11488u, ~(~(~var_1.a.a.a)), var_1.a.a.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1236f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1757f)))))), Struct_4(vec4<u32>(4294967295u, abs(1u), min(~var_1.a.a.a, 17631u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.a.a.a, 14814u), ~53207u)), Struct_2(Struct_1(var_1.a.a.a)), abs(reverseBits(vec3<u32>(50673u, var_1.a.a.a, 0u))), var_0.ww, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1235f)), -1192f, -415f, _wgslsmith_f_op_f32(round(-1104f))))), 0u, vec2<i32>(firstTrailingBit(i32(-1i) * -53934i), select(u_input.d, u_input.d, false) << (firstLeadingBit(abs(2549u)) % 32u)));
    var var_3 = Struct_2(Struct_1(~(~var_1.a.a.a) << (1u % 32u)));
    return _wgslsmith_mod_vec3_i32(max(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.e.x, var_2.e.x, -281i) & vec3<i32>(16384i, 1i, u_input.d), vec3<i32>(u_input.d, var_2.e.x, 0i))), ~firstLeadingBit(-vec3<i32>(0i, var_2.e.x, var_2.e.x))), ~vec3<i32>(u_input.d ^ -1i, _wgslsmith_clamp_i32(u_input.d, var_2.e.x, i32(-1i) * -47324i), -25840i));
}

fn func_1() -> bool {
    return _wgslsmith_dot_vec3_i32((firstTrailingBit(vec3<i32>(14665i, 34202i, 2147483647i)) | abs(vec3<i32>(u_input.d, u_input.d, u_input.d))) & func_2(), vec3<i32>(2147483647i << (u_input.b.x % 32u), u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d, -2147483647i), vec3<i32>(38928i, u_input.d, u_input.d)) ^ _wgslsmith_sub_i32(26551i, u_input.d))) >= _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~2147483647i, u_input.d, u_input.d), -vec3<i32>(0i, -12788i, 8334i)), 2524i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 18118i;
    let var_1 = ~_wgslsmith_sub_vec4_u32(~vec4<u32>(~u_input.c, ~0u, countOneBits(u_input.a), u_input.a), select(vec4<u32>(firstTrailingBit(39195u), _wgslsmith_div_u32(43946u, 1u), u_input.a >> (u_input.c % 32u), 0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 21433u, 0u, u_input.b.x), vec4<u32>(4294967295u, 1u, 16371u, u_input.a)) ^ (vec4<u32>(u_input.a, 36675u, u_input.c, u_input.a) << (vec4<u32>(u_input.a, 23608u, u_input.c, 16651u) % vec4<u32>(32u))), func_1()));
    var var_2 = Struct_3(Struct_2(Struct_1(u_input.a ^ (var_1.x | 1710u))));
    let var_3 = min(firstLeadingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.d, -1i, -20548i, u_input.d), vec4<i32>(16985i, u_input.d, -51611i, 2147483647i) ^ vec4<i32>(-2147483647i, u_input.d, -27021i, -104632i)) << (~vec4<u32>(var_1.x, 1u, 9548u, 24905u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_div_i32(~(-46790i), u_input.d & u_input.d), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -69109i, u_input.d), vec4<i32>(-26852i, 46151i, u_input.d, u_input.d)), func_2().x, reverseBits(11573i)), u_input.d, -1i) | (vec4<i32>(~(-15270i), u_input.d, func_2().x, -u_input.d) << (~var_1 % vec4<u32>(32u))));
    var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(-_wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_clamp_i32(var_3.x, u_input.d, var_3.x)), u_input.d), countOneBits(u_input.d));
    var var_4 = select(select(vec3<bool>(any(vec4<bool>(false, false, true, true)), true, true), vec3<bool>(func_1(), true, func_1()), all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false), true))), select(vec3<bool>(true, true, true), vec3<bool>(func_1(), false, ~var_2.a.a.a > 88252u), vec3<bool>(true, true, true)), select(select(vec3<bool>(func_3(), true, true), vec3<bool>(select(true, true, false), true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec4<bool>(false, true, true, false))), vec3<bool>(any(vec3<bool>(false, true, true)), any(vec3<bool>(true, false, true)), true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, false)))));
    var_2 = Struct_3(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-293f + -1250f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-334f, 770f, 1641f, -307f) - vec4<f32>(1036f, 1288f, 1000f, -710f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-443f, -917f, -1000f, -1035f) - vec4<f32>(1000f, -1000f, 761f, 1342f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(348f, 342f, 743f, 1288f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(-290f)), -779f, 1f, _wgslsmith_f_op_f32(step(1074f, -356f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1067f, 614f, 1229f, 1423f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 150f, 120f, -139f))), true & !var_4.x))), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(var_2.a.a.a, 0u, var_2.a.a.a, var_2.a.a.a), vec4<u32>(var_1.x, 4294967295u, u_input.c, 1u), vec4<bool>(var_4.x, false, var_4.x, false)), firstLeadingBit(_wgslsmith_mult_vec4_u32(var_1, vec4<u32>(u_input.a, var_2.a.a.a, var_2.a.a.a, var_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(801f)))), -759f), vec3<f32>(1153f, 489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1505f)))) - -586f)));
}

