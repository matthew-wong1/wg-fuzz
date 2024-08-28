struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -27136i, -25303i, 1i);

var<private> global1: vec4<f32> = vec4<f32>(-1649f, -1199f, 1180f, -832f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_1, global1.x, -1074f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-196f, global1.x, global1.x, 1723f), vec4<f32>(arg_1, global1.x, -1000f, global1.x), true)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, arg_1, 450f, arg_1))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, arg_1, -760f), vec4<f32>(264f, -1626f, -110f, 143f), vec4<bool>(true, false, true, false)))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 1291f, 1249f, global1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 430f, global1.x, -841f) - vec4<f32>(-1000f, -455f, arg_1, 278f))))));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), global1.x, _wgslsmith_f_op_f32(trunc(409f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.x)));
    var var_0 = all(select(vec2<bool>(select(all(vec2<bool>(false, false)), true, false), any(vec3<bool>(false, true, true))), vec2<bool>(false, true), true));
    let var_1 = ~arg_0;
    global0 = ~(~vec4<i32>(arg_0.x, -arg_2.x, -29186i, global0.x));
    return 859f;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(global1.xwx * global1.zxz);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(-vec2<i32>(39400i, arg_0), -1586f, vec3<i32>(-36104i, arg_0, -81496i))), 308f, global1.x, global1.x) * vec4<f32>(136f, var_0.x, _wgslsmith_f_op_f32(trunc(-834f)), _wgslsmith_f_op_f32(trunc(-1193f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 820f) - _wgslsmith_div_f32(1470f, -715f))), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(global1.x + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))));
    let var_2 = _wgslsmith_div_u32(0u, abs(~(~1u)));
    var var_3 = Struct_3(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, global0.x), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global0.wyx, vec3<i32>(arg_0, 0i, global0.x)), ~vec3<i32>(-46677i, global0.x, arg_0)), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, -2011i), global0.xy << (arg_1.yy % vec2<u32>(32u))))), Struct_1(2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -1857f), _wgslsmith_f_op_vec2_f32(global1.zz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.wz, global1.xy))), vec2<i32>(~1i, _wgslsmith_add_i32(-14844i, -61122i))), vec4<u32>(~(~(~42888u)), 51884u, abs(arg_1.x), 1u));
    var_3 = Struct_3(vec2<i32>(var_3.a.x, var_3.b.a), Struct_1(5796i, -394f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_3.b.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -922f) * var_3.b.c))), vec2<i32>(~global0.x, reverseBits(5961i) >> (~var_3.c.x % 32u))), _wgslsmith_mod_vec4_u32(countOneBits(u_input.c), u_input.b));
    return Struct_4(abs(0u), Struct_3(-max(vec2<i32>(global0.x, -56079i), vec2<i32>(-1i, arg_0)), var_3.b, u_input.b | _wgslsmith_div_vec4_u32(vec4<u32>(101315u, 21226u, arg_1.x, var_3.c.x), vec4<u32>(4294967295u, var_3.c.x, u_input.e.x, arg_1.x))), Struct_2(firstLeadingBit(56804u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(581f, arg_0.b.b.b, -571f, 232f))))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(166f)))), arg_0.b.b.b, arg_0.b.b.b, arg_0.b.b.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(359f, -523f, 104f, arg_0.b.b.c.x))))));
    let var_0 = func_2(13984i, _wgslsmith_mult_vec3_u32(abs(vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, arg_1.x), _wgslsmith_add_u32(arg_1.x, u_input.c.x), 25341u >> (u_input.e.x % 32u))), vec3<u32>(u_input.c.x, ~23965u, ~(~66445u)))).b;
    global0 = select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(global0.x, 1i, arg_0.b.b.a, global0.x), vec4<i32>(-27456i, 6789i, global0.x, global0.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(9443i, arg_0.b.a.x, -2147483647i, global0.x), vec4<i32>(0i, -41418i, -32175i, -11456i), vec4<i32>(2147483647i, global0.x, 18513i, arg_0.b.a.x))), max(~var_0.a.x, firstTrailingBit(global0.x))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -27129i, arg_0.b.a.x, 22245i), vec4<i32>(global0.x, arg_0.b.b.a, global0.x, global0.x)), max(vec4<i32>(global0.x, 19201i, 34880i, arg_0.b.b.a), ~vec4<i32>(0i, 25298i, -1i, -10801i)))), select(-abs(vec4<i32>(0i, arg_0.b.b.d.x, 31270i, 22119i) << (vec4<u32>(4294967295u, var_0.c.x, arg_0.c.a, 4294967295u) % vec4<u32>(32u))), ~(~(~vec4<i32>(-24262i, global0.x, -17875i, 2147483647i))), !vec4<bool>(false, true, true, arg_0.c.a != arg_1.x)), vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true | (true && any(vec2<bool>(true, true))), true, true));
    global0 = ~(-_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_0.b.d.x, 35309i, 45133i, arg_0.b.a.x)), vec4<i32>(arg_0.b.a.x | 57478i, max(-1i, -1i), i32(-1i) * -18383i, global0.x)));
    var var_1 = func_2(~(-_wgslsmith_div_i32(var_0.b.d.x, -var_0.a.x)), ~(~(~vec3<u32>(0u, 33071u, arg_0.c.a))) ^ reverseBits(u_input.e));
    return ~abs(1u) ^ (~_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.c), var_1.b.c >> (var_1.b.c % vec4<u32>(32u))) >> (~arg_0.a % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(29520u, u_input.a.x, func_4(func_2(_wgslsmith_clamp_i32(~global0.x, ~37282i, min(global0.x, global0.x)), reverseBits(vec3<u32>(u_input.e.x, 1u, 37041u) | vec3<u32>(4294967295u, 4294967295u, u_input.b.x))), vec2<u32>(select(_wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.yw), 1u, all(vec3<bool>(false, false, true))), u_input.d.x)));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) - _wgslsmith_f_op_f32(max(-1257f, -346f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global1.x), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -246f) * -1264f));
    global0 = -max(firstLeadingBit(-vec4<i32>(-1i, 13198i, 1i, -2147483647i)), -countOneBits(vec4<i32>(-18213i, 2147483647i, -2147483647i, global0.x)) | (vec4<i32>(-1i) * -vec4<i32>(-1i, -13288i, 13968i, -54729i)));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1f)), 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-165f - _wgslsmith_f_op_f32(min(global1.x, global1.x))))), 372f) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1032f, -566f, global1.x, global1.x))))));
    var var_1 = (!select(false, all(vec3<bool>(true, true, false)), false) | true) | all(vec3<bool>(true, -327f <= _wgslsmith_f_op_f32(round(195f)), !any(vec3<bool>(true, true, true))));
    return func_2(_wgslsmith_sub_i32(-(~_wgslsmith_dot_vec2_i32(global0.zy, global0.wz)), global0.x), max(~u_input.e << (~func_2(2147483647i, vec3<u32>(74636u, 362u, u_input.e.x)).b.c.ywz % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_mod_vec3_u32(var_0, vec3<u32>(10715u, u_input.b.x, var_0.x)) | func_2(global0.x, vec3<u32>(var_0.x, 4294967295u, 80877u)).b.c.www))).b.b;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> vec4<i32> {
    global0 = vec4<i32>(~(arg_2.d.x | _wgslsmith_sub_i32(2147483647i >> (arg_3.a % 32u), ~13103i)), 0i, ~1i, ~firstLeadingBit(0i >> (arg_0.x % 32u)));
    global0 = reverseBits(max(~abs(vec4<i32>(-2507i, 15700i, global0.x, 0i)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a, global0.x, -13697i, 1i), vec4<i32>(global0.x, -24855i, -14009i, -2147483647i))))) << (abs(arg_0) % vec4<u32>(32u));
    global0 = ~min(abs(reverseBits(vec4<i32>(global0.x, -1i, arg_2.a, -2147483647i)) & firstTrailingBit(vec4<i32>(2147483647i, arg_2.d.x, 2147483647i, global0.x))), -(~firstTrailingBit(vec4<i32>(arg_2.d.x, arg_2.d.x, 17907i, arg_2.d.x))));
    global1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1340f)) * arg_2.c.x), _wgslsmith_f_op_f32(-func_2(arg_2.a, u_input.e).b.b.b), _wgslsmith_f_op_f32(sign(-324f)), _wgslsmith_f_op_f32(-1f))));
    let var_0 = u_input.b;
    return _wgslsmith_div_vec4_i32(abs(vec4<i32>(1i, ~reverseBits(0i), 27745i, ~func_1().d.x)), min(vec4<i32>(arg_2.a, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_2.d.x, -6419i), global0.x, -2147483647i), ~(-17248i), 1i), _wgslsmith_mult_vec4_i32(~vec4<i32>(27996i, arg_2.d.x, 0i, -3025i), abs(vec4<i32>(global0.x, -1i, 1i, arg_2.a) << (u_input.c % vec4<u32>(32u))))));
}

fn func_6(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_div_u32(abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1.x, 15538u), 0u)), (0u | firstTrailingBit(4294967295u)) << (u_input.b.x % 32u)), func_2(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global0.xx, global0.ww), 73585i), countOneBits(~(~u_input.c.yzz))).b, Struct_2(func_4(func_2(global0.x, firstTrailingBit(vec3<u32>(7000u, 114278u, 17691u))), max(~arg_1.xy, ~u_input.d))));
    let var_1 = false;
    global0 = func_5(abs(var_0.b.c), Struct_2((_wgslsmith_sub_u32(4294967295u, var_0.a) ^ ~23116u) << (1u % 32u)), func_1(), func_2(arg_2.x, vec3<u32>(~1u >> (max(u_input.c.x, 0u) % 32u), 35312u, firstLeadingBit(arg_1.x) | countOneBits(arg_1.x))).c);
    var var_2 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1123f)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1957f - _wgslsmith_div_f32(var_0.b.b.c.x, var_0.b.b.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-209f, -1526f))), reverseBits(global0.zx));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -855f);
    return var_0.c;
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = global1.x;
    global0 = vec4<i32>(0i, global0.x, global0.x, firstTrailingBit(global0.x));
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), global1.x, global1.x)))))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(step(func_2(_wgslsmith_div_i32(reverseBits(global0.x), countOneBits(2147483647i)), reverseBits(vec3<u32>(arg_2.x, arg_2.x, arg_2.x))).b.b.c.x, -1376f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1358f, global1.x)) - _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(max(1277f, global1.x))))), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) * 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(408f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(592f)) - _wgslsmith_f_op_f32(min(global1.x, global1.x))))));
    let var_1 = Struct_4(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1.a, arg_1.a), select(4294967295u, arg_0, arg_3.x)) >> (4294967295u % 32u), ~u_input.c.x), Struct_3(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(18957i, global0.x) >> (arg_2.zz % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(-87866i, 0i), vec2<i32>(5406i, 1i))), global0.zw), Struct_1(_wgslsmith_mod_i32(global0.x, global0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -309f))), global1.xw, vec2<i32>(-1i, global0.x) & vec2<i32>(-1i, -2147483647i)), select(countOneBits(firstTrailingBit(u_input.c)), ~_wgslsmith_add_vec4_u32(u_input.b, u_input.c), select(select(vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x), vec4<bool>(arg_3.x, true, true, false), arg_3.x), !vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), true))), func_6(false, ~u_input.c.ywy, select(vec4<i32>(_wgslsmith_mult_i32(global0.x, 0i), 2147483647i, i32(-1i) * -8551i, -14086i), vec4<i32>(global0.x, 16933i, -global0.x, ~global0.x), true && (global0.x > global0.x))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(~u_input.a.x, func_6(all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, false, true, false), global0.x < -23472i)), ~vec3<u32>(~12019u, 1u, 52018u & u_input.b.x), func_5(max(select(vec4<u32>(u_input.d.x, 0u, u_input.c.x, 0u), u_input.b, false), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 8921u, 0u, u_input.e.x), u_input.c, vec4<u32>(u_input.e.x, u_input.b.x, 38678u, u_input.d.x))), Struct_2(u_input.c.x), func_1(), func_2(_wgslsmith_sub_i32(-59134i, global0.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.e.x), vec3<u32>(u_input.d.x, u_input.e.x, 4294967295u))).c)), (vec3<u32>(func_4(Struct_4(u_input.d.x, Struct_3(global0.wy, Struct_1(global0.x, 125f, global1.wz, global0.wx), vec4<u32>(u_input.a.x, 1u, u_input.c.x, u_input.c.x)), Struct_2(u_input.a.x)), u_input.d), u_input.b.x, 30718u ^ u_input.b.x) & _wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, 1u, u_input.d.x), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), vec3<bool>(false, true, false)), ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.d.x))) ^ reverseBits(u_input.e), vec2<bool>(any(vec2<bool>(true, all(vec2<bool>(true, true)))), any(vec4<bool>(any(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, true, true)), false, true))));
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2369f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) + vec4<f32>(_wgslsmith_f_op_f32(func_3(func_5(vec4<u32>(1u, var_0.a, u_input.d.x, u_input.c.x), var_0, Struct_1(global0.x, 546f, global1.wz, vec2<i32>(2147483647i, global0.x)), var_0).wy, _wgslsmith_f_op_f32(round(-1288f)), global0.zzz)), -128f, 696f, _wgslsmith_div_f32(-167f, _wgslsmith_f_op_f32(f32(-1f) * -881f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.x, -960f, global1.x))), vec4<f32>(340f, _wgslsmith_f_op_f32(508f - global1.x), _wgslsmith_f_op_f32(809f + 913f), global1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -219f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, -360f, -1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(global0.zz), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 1699i), _wgslsmith_mult_vec2_i32(global0.zy, vec2<i32>(2234i, global0.x))) & _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 1i, global0.x, -71484i), min(vec4<i32>(86852i, global0.x, global0.x, -25536i), vec4<i32>(-2147483647i, global0.x, global0.x, 1951i))), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, global1.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-627f, global1.x) - _wgslsmith_div_f32(global1.x, -1549f)))));
}

