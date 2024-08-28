struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2537f))), _wgslsmith_f_op_f32(select(2154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1671f))), true))) <= -1461f;
    let var_1 = ~abs(_wgslsmith_sub_i32(61580i, u_input.d.x));
    var var_2 = Struct_5(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1842f), 2492f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(563f * 1000f), _wgslsmith_div_f32(-629f, -104f), true))), countOneBits(vec2<i32>(-38644i, min(u_input.b, var_1))), vec3<u32>(select(28642u, _wgslsmith_clamp_u32(25799u, u_input.a.x, 11661u), var_0), 1u, 1u), u_input.c, vec2<u32>(_wgslsmith_mod_u32(~u_input.c.x, u_input.a.x), max(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 842u), vec2<u32>(4294967295u, 632u))))));
    var var_3 = ~_wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(var_2.a.d.x, 4294967295u, u_input.a.x, 19784u), ~vec4<u32>(u_input.c.x, var_2.a.e.x, var_2.a.c.x, var_2.a.e.x))), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_2.a.c.x, u_input.c.x, u_input.a.x, 1u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, var_2.a.c.x, 4294967295u), vec4<u32>(4294967295u, 1u, 111533u, var_2.a.d.x)), vec4<u32>(u_input.a.x, var_2.a.d.x, var_2.a.d.x, u_input.a.x), vec4<u32>(u_input.c.x, 4294967295u, 0u, var_2.a.e.x))));
    var var_4 = ~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.c.x, var_3.x, _wgslsmith_sub_u32(var_3.x, var_3.x), min(42093u, 1u)), ~(~vec4<u32>(32558u, var_2.a.c.x, u_input.c.x, 43626u))));
    return var_0;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_4) -> f32 {
    var var_0 = select(arg_0, arg_0, true);
    var_0 = func_3();
    var_0 = !any(vec3<bool>(arg_0, _wgslsmith_mult_i32(u_input.e, 1i) != _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 29906i, u_input.d.x), vec3<i32>(u_input.d.x, -2147483647i, 1050i)), true));
    let var_1 = Struct_1(abs(~vec4<u32>(arg_1.x & 0u, 52941u, arg_1.x, ~20417u)), firstTrailingBit(vec2<u32>(~_wgslsmith_clamp_u32(4503u, 4294967295u, arg_1.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1.x, 2444u), ~0u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_2.wyw + vec3<f32>(_wgslsmith_div_f32(arg_3.a, 1209f), arg_3.a, -1475f)), _wgslsmith_f_op_vec3_f32(-arg_2.wyx))) - _wgslsmith_f_op_vec3_f32(arg_2.zxy + vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(arg_3.a - arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.a)) + arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(697f + arg_3.a)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + arg_3.a);
}

fn func_4(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = u_input.b;
    var var_1 = u_input.b;
    var_1 = 2147483647i;
    let var_2 = true;
    var_1 = u_input.d.x;
    return u_input.a.x;
}

fn func_1() -> f32 {
    let var_0 = vec4<u32>(~_wgslsmith_clamp_u32(u_input.c.x, ~u_input.c.x, u_input.c.x), 13312u, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1605f)) >= _wgslsmith_f_op_f32(func_2(true, vec3<u32>(0u, u_input.c.x, u_input.c.x), vec4<f32>(227f, 760f, -316f, 296f), Struct_4(328f))), -1964f), ~firstTrailingBit(1u));
    var var_1 = vec2<u32>(12404u ^ select(1u, var_0.x, any(vec4<bool>(true, true, true, true))), 1u);
    var var_2 = ~(vec4<i32>(u_input.d.x, 2147483647i, _wgslsmith_add_i32(firstLeadingBit(-716i), _wgslsmith_sub_i32(-27130i, u_input.e)), 2147483647i) | ~vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, -2147483647i), ~u_input.b, ~2147483647i, abs(-1i)));
    let var_3 = var_2.wzy;
    var_2 = vec4<i32>((abs(var_3.x & var_3.x) >> (var_0.x % 32u)) | ~(countOneBits(u_input.b) | ~var_2.x), u_input.d.x, _wgslsmith_dot_vec3_i32(select(min(reverseBits(vec3<i32>(var_3.x, 1i, 2147483647i)), firstLeadingBit(var_2.zwx)), abs(firstLeadingBit(vec3<i32>(0i, 13088i, 1i))), true), _wgslsmith_sub_vec3_i32(var_2.www, _wgslsmith_clamp_vec3_i32(var_2.wyw | var_2.wzy, vec3<i32>(-14796i, 43360i, var_3.x), _wgslsmith_add_vec3_i32(vec3<i32>(-3810i, u_input.d.x, u_input.d.x), vec3<i32>(var_2.x, var_2.x, -41983i))))), abs(select(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_3.x, 2147483647i, var_2.x, 46821i)), vec4<i32>(-2147483647i, var_2.x, var_2.x, -1i) & vec4<i32>(-2147483647i, -1i, -33810i, 0i)), firstTrailingBit(var_3.x), true)));
    return -769f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(vec3<i32>(abs(u_input.b), ~(~1i), u_input.b));
    var var_1 = Struct_2(vec4<f32>(-517f, _wgslsmith_f_op_f32(f32(-1f) * -1573f), _wgslsmith_div_f32(-860f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1071f))), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1407f, -468f, false))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1()))), Struct_1(firstLeadingBit(~(~vec4<u32>(u_input.c.x, u_input.a.x, 74992u, 4294967295u))), vec2<u32>(31007u, 4294967295u)));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(800f)) + var_1.b)));
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_f32(var_2.a + _wgslsmith_div_f32(var_2.a, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - 525f), var_1.d);
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_1.a)))), _wgslsmith_f_op_f32(exp2(var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1())))), var_1.d);
    var_0 = firstLeadingBit(~vec3<i32>(abs(u_input.d.x | 2147483647i), _wgslsmith_div_i32(-41320i & var_0.x, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, -21189i, -40742i), vec4<i32>(0i, 22915i, 41560i, u_input.e) >> (vec4<u32>(64298u, u_input.a.x, 4294967295u, 415u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.a, vec2<u32>(func_4(all(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(-var_3.c)), u_input.c.x), vec3<u32>(19822u, func_4(true, _wgslsmith_f_op_f32(func_2(false, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, var_3.d.a.x, var_1.d.b.x), var_1.d.a.yzy), vec4<f32>(var_3.b, var_3.b, var_1.a.x, -1314f), Struct_4(609f)))), ~_wgslsmith_dot_vec2_u32(var_1.d.a.xz, vec2<u32>(var_1.d.a.x, 0u)) & firstLeadingBit(_wgslsmith_sub_u32(var_1.d.b.x, var_1.d.a.x))));
}

