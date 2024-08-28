struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -11845i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(454f, -771f), 326f, _wgslsmith_f_op_f32(sign(792f)), 1f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-638f, -318f, -532f, 1569f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-938f, 1117f, 1629f, 945f) * vec4<f32>(-2102f, 916f, -323f, 1132f))))));
    var var_1 = Struct_1(vec2<i32>(-_wgslsmith_add_i32(-2147483647i, u_input.c.x), u_input.c.x), _wgslsmith_sub_i32(2147483647i, u_input.c.x), u_input.a.x, u_input.c.x, -401f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.xz, vec2<f32>(-162f, 912f), false)))))));
    var var_3 = Struct_4(Struct_1(vec2<i32>(-var_1.d, -firstLeadingBit(-16613i)), -(var_1.d ^ u_input.c.x), ~84135u, -var_1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(-354f, var_0.x))))), u_input.c.x, -817f, Struct_2(var_1.c, all(vec2<bool>(true, true))), -(-countOneBits(vec4<i32>(u_input.c.x, -16119i, -31779i, u_input.c.x)) >> (u_input.a % vec4<u32>(32u))));
    let var_4 = ~_wgslsmith_add_vec3_u32(~u_input.a.wwy, vec3<u32>(min(~21470u, var_3.d.a >> (14948u % 32u)), ~arg_0 ^ 1u, _wgslsmith_sub_u32(var_3.d.a, 0u)));
    return 4294967295u;
}

fn func_2() -> Struct_3 {
    global0 = countOneBits(max(u_input.c.x, _wgslsmith_sub_i32(1i, u_input.c.x))) << (u_input.b.x % 32u);
    let var_0 = max(u_input.c | vec2<i32>(select(~u_input.c.x, -1i, true), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -3084i, u_input.c.x) ^ vec3<i32>(40709i, u_input.c.x, -4371i), vec3<i32>(-1i, u_input.c.x, u_input.c.x))), vec2<i32>(u_input.c.x >> (~min(u_input.a.x, u_input.a.x) % 32u), abs(u_input.c.x)));
    return Struct_3(Struct_1(u_input.c, ~(-41457i), func_3(abs(_wgslsmith_clamp_u32(u_input.a.x, 40408u, 4294967295u))), 28226i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)), 581f))));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: bool) -> vec3<u32> {
    let var_0 = func_2();
    let var_1 = countOneBits(u_input.a.zzw);
    var var_2 = vec2<bool>(arg_2, all(!select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), select(vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(true, arg_2, arg_2, arg_2)), any(vec2<bool>(true, arg_2)))));
    var var_3 = firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, -8993i) & var_0.a.a, _wgslsmith_clamp_vec2_i32(u_input.c, arg_1, u_input.c)), -59043i) << (~max(u_input.b, _wgslsmith_mult_vec2_u32(var_1.zz, var_1.zy)) % vec2<u32>(32u)));
    var_3 = abs(min((_wgslsmith_mult_vec2_i32(arg_1, vec2<i32>(var_0.a.d, -2147483647i)) >> (firstLeadingBit(var_1.zx) % vec2<u32>(32u))) >> (vec2<u32>(0u, _wgslsmith_clamp_u32(var_0.a.c, var_0.a.c, 1u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(var_0.a.a, _wgslsmith_sub_vec2_i32(firstTrailingBit(var_0.a.a), var_0.a.a))));
    return vec3<u32>(var_0.a.c, ~_wgslsmith_sub_u32(var_1.x, ~4294967295u & u_input.a.x), var_0.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.c.x, abs(-u_input.c.x), u_input.c.x), -((vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, 1i, 9787i)) >> (min(firstLeadingBit(vec3<u32>(0u, 1u, 4294967295u)), func_1(719f, u_input.c, true)) % vec3<u32>(32u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1170f * 1635f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-446f * 737f))) + _wgslsmith_div_f32(-418f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1562f) - -1899f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(595f + _wgslsmith_f_op_f32(-2503f * -1162f)) + -2027f)));
    global0 = var_0.x;
    var var_2 = Struct_4(Struct_1(-vec2<i32>(var_0.x, 9393i), _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, var_0.x, 2193i), vec3<i32>(-1i, u_input.c.x, var_0.x))), vec3<i32>(reverseBits(var_0.x), reverseBits(u_input.c.x), firstTrailingBit(36197i))), ~_wgslsmith_mod_u32(33172u, ~u_input.a.x), -32908i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-556f)) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(655f + 532f)))), 44529i, 453f, Struct_2(~1u, true), vec4<i32>(firstTrailingBit(u_input.c.x | u_input.c.x), -u_input.c.x, reverseBits(_wgslsmith_clamp_i32(-2147483647i, 1i, -2147483647i)), u_input.c.x) << (vec4<u32>(~u_input.b.x, u_input.a.x, 0u ^ u_input.b.x, _wgslsmith_div_u32(countOneBits(11756u), 1u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1207f, _wgslsmith_add_vec3_i32(firstLeadingBit(-(vec3<i32>(var_2.e.x, 0i, 42104i) | var_2.e.xww)), ~var_2.e.xzx), ~(~(~(46224u | var_2.a.c))), 43077u);
}

