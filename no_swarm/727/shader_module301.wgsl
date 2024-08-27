struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    return !vec4<bool>(global0.b.x, global0.b.x, !global0.b.x, select(global0.b.x, min(global0.d.x, 4294967295u) < abs(4294967295u), false));
}

fn func_2() -> Struct_1 {
    var var_0 = -(~(-_wgslsmith_mult_i32(-u_input.b.x, _wgslsmith_div_i32(1i, u_input.a.x))));
    var var_1 = Struct_3(firstLeadingBit(firstTrailingBit(global0.a.b)), Struct_1(global0.c.a, firstTrailingBit(~firstTrailingBit(global0.a.a))), vec4<i32>(u_input.a.x, max(min(u_input.a.x, -u_input.b.x), 2147483647i), _wgslsmith_div_i32(u_input.b.x & _wgslsmith_sub_i32(-11315i, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, u_input.a.x) >> (global0.c.a % vec3<u32>(32u)), select(u_input.a, vec3<i32>(u_input.a.x, 1i, -2147483647i), global0.b.x))), -45883i), 100f, Struct_2(global0.c, global0.b, global0.a, max(global0.d, vec4<u32>(select(u_input.d, 1u, global0.b.x), 4316u, ~global0.a.a.x, _wgslsmith_div_u32(4294967295u, global0.c.b.x)))));
    var var_2 = select(!func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -985f), var_1.d, _wgslsmith_div_f32(-597f, -965f), _wgslsmith_div_f32(var_1.d, var_1.d))), !vec4<bool>(true, var_1.e.b.x, true, var_1.e.b.x), var_1.e.b.x | false);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - var_1.d))));
    var var_4 = vec4<f32>(664f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(248f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1.d))))))), var_1.d, _wgslsmith_f_op_f32(-1000f * 1468f));
    return global0.c;
}

fn func_1() -> Struct_3 {
    global0 = Struct_2(func_2(), !global0.b, Struct_1(func_2().b, min(vec3<u32>(global0.d.x, global0.d.x, u_input.c), vec3<u32>(global0.c.b.x, 36448u, 16305u) >> (firstLeadingBit(vec3<u32>(u_input.d, global0.a.a.x, u_input.c)) % vec3<u32>(32u)))), abs(_wgslsmith_div_vec4_u32(firstTrailingBit(global0.d), ~global0.d)) & reverseBits(~vec4<u32>(39568u, global0.a.a.x, 4294967295u, global0.a.b.x)));
    global0 = Struct_2(global0.c, !(!(!global0.b)), Struct_1(abs(vec3<u32>(firstLeadingBit(global0.c.b.x), ~global0.d.x, global0.d.x)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.c, 88591u, 0u), vec3<u32>(4294967295u, global0.c.a.x, u_input.d)) ^ ~global0.a.b, vec3<u32>(~global0.a.a.x, 4294967295u, u_input.d))), ~global0.d);
    var var_0 = Struct_3(abs(_wgslsmith_add_vec3_u32(vec3<u32>(17008u, u_input.d, global0.d.x), vec3<u32>(25813u, 101040u, u_input.d)) | func_2().a), global0.c, select(firstLeadingBit(vec4<i32>(~u_input.a.x, abs(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(12492i, -1i, u_input.a.x, 35825i), vec4<i32>(-14717i, u_input.b.x, -5229i, u_input.b.x)), u_input.a.x)), vec4<i32>(u_input.a.x << (1u % 32u), 43541i, 29960i << (0u % 32u), -1i & u_input.b.x) & abs(vec4<i32>(-2147483647i, u_input.a.x, -2248i, 60029i)), func_3(vec4<f32>(_wgslsmith_div_f32(-1042f, -1187f), _wgslsmith_f_op_f32(-533f - -689f), _wgslsmith_f_op_f32(-1020f - -635f), -138f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -349f)) * _wgslsmith_f_op_f32(1000f + -1635f)))), 1898f), Struct_2(func_2(), vec3<bool>(false, true, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-200f, -1527f, -1250f, 343f) * vec4<f32>(1182f, -1000f, -226f, -1000f))).x), func_2(), ~vec4<u32>(abs(3821u), reverseBits(4294967295u), 1u, _wgslsmith_mod_u32(4294967295u, global0.a.b.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, _wgslsmith_f_op_f32(step(-2093f, 1013f))));
    var_0 = Struct_3(~select(select(vec3<u32>(50383u, var_0.e.c.b.x, u_input.c), var_0.e.a.b, false), ~(~vec3<u32>(84750u, var_0.b.b.x, global0.c.a.x)), false), func_2(), vec4<i32>(reverseBits(_wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, 4220i), firstTrailingBit(u_input.b.x))), u_input.b.x, 2147483647i << (var_0.b.b.x % 32u), u_input.b.x >> (_wgslsmith_dot_vec4_u32(global0.d, ~var_0.e.d) % 32u)), -922f, Struct_2(func_2(), global0.b, func_2(), ~countOneBits(vec4<u32>(1u, 0u, 77293u, var_0.a.x))));
    return Struct_3(vec3<u32>(select(0u, global0.d.x, func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d, 1337f, var_0.d, var_1.x), vec4<f32>(1000f, 1563f, -459f, 380f)))).x), 14750u, _wgslsmith_clamp_u32(~u_input.d, _wgslsmith_mult_u32(4294967295u, 0u) >> (~4294967295u % 32u), ~_wgslsmith_dot_vec3_u32(var_0.e.d.zzz, vec3<u32>(var_0.e.d.x, var_0.e.d.x, 4294967295u)))), Struct_1(vec3<u32>(var_0.e.d.x, u_input.c, abs(~var_0.b.b.x)), ~select(global0.a.b ^ vec3<u32>(1u, 74163u, global0.a.a.x), ~vec3<u32>(u_input.d, u_input.d, u_input.c), true)), vec4<i32>(var_0.c.x, u_input.b.x, 0i, ~(_wgslsmith_clamp_i32(var_0.c.x, 63435i, 1i) >> (min(89140u, 1u) % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -1541f), Struct_2(Struct_1(vec3<u32>(1u, 1u, func_2().b.x), ~abs(vec3<u32>(u_input.c, 4294967295u, 4294967295u))), var_0.e.b, var_0.e.c, _wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0.e.d.x, 1u, 4294967295u, 1u)), var_0.e.d)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    global0 = func_1().e;
    global0 = arg_0.e;
    let var_0 = abs(~(-firstLeadingBit(~arg_0.c.yzz)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_0.d, arg_0.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, arg_0.d, 764f) + vec3<f32>(arg_0.d, arg_0.d, 1869f)), !arg_2.b.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-321f, -1000f, arg_0.d) + vec3<f32>(arg_0.d, -1000f, arg_0.d)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, arg_0.d, 772f), vec3<f32>(arg_0.d, arg_0.d, arg_0.d))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(928f, 1088f, arg_0.d), vec3<f32>(arg_0.d, 671f, -711f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.d, arg_0.d, 761f), vec3<f32>(arg_0.d, arg_0.d, arg_0.d), vec3<bool>(true, global0.b.x, false))), arg_2.b)))));
    let var_2 = func_1().e;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1819f + var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-527f, _wgslsmith_f_op_f32(func_4(func_1(), vec4<bool>(global0.b.x, true, true, false), Struct_2(global0.c, vec3<bool>(false, false, global0.b.x), global0.c, global0.d), global0.a)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(610f, -757f))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-124f, 108f)))), vec2<f32>(596f, -610f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1813f, 489f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(577f, -189f), vec2<f32>(1713f, -299f), global0.b.x)), vec2<f32>(1f, 1f)))))), global0.b.x | !(!global0.b.x)));
    global0 = Struct_2(Struct_1(vec3<u32>((u_input.d ^ 88327u) & countOneBits(global0.a.b.x), _wgslsmith_dot_vec4_u32(max(vec4<u32>(global0.d.x, u_input.c, 42998u, global0.c.a.x), vec4<u32>(global0.c.a.x, 4294967295u, global0.a.a.x, 0u)), global0.d), 4294967295u), ~global0.d.wwz), !func_1().e.b, Struct_1(vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(31821u, u_input.d, global0.c.b.x, u_input.c), func_1().e.d), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d, 10137u), 1u)), vec3<u32>(17230u, u_input.c, 4294967295u) ^ ~reverseBits(vec3<u32>(u_input.c, global0.d.x, global0.a.a.x))), firstTrailingBit(countOneBits(vec4<u32>(global0.c.b.x, ~55588u, u_input.d, 0u))));
    global0 = func_1().e;
    let var_1 = func_2();
    var var_2 = ~vec4<i32>(_wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_sub_i32(u_input.b.x >> (global0.c.a.x % 32u), -1i)), -19186i, 0i, firstLeadingBit(-28174i));
    var var_3 = global0.a.a;
    var var_4 = _wgslsmith_f_op_f32(-var_0.x);
    var var_5 = Struct_1(vec3<u32>(~(~70434u & global0.c.b.x), u_input.c, global0.d.x), vec3<u32>(24265u >> (_wgslsmith_dot_vec2_u32(abs(var_1.b.yy), ~global0.c.a.xy) % 32u), select(func_1().b.a.x, ~0u, !(1713u < u_input.d)), max(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 64744u, var_3.x), ~global0.c.b), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, -10689i, u_input.a.x, 1i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, -26293i, 2147483647i, -1i), vec4<i32>(1i, u_input.b.x, u_input.a.x, 0i), vec4<i32>(41059i, 1i, u_input.b.x, var_2.x)) >> (vec4<u32>(1u, _wgslsmith_mod_u32(global0.c.b.x, var_3.x), var_5.b.x, max(4223u, 1u)) % vec4<u32>(32u))), vec2<u32>(func_1().b.a.x, var_1.a.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(40568u, reverseBits(~var_5.b.x)), 104964u), ~_wgslsmith_sub_u32(firstTrailingBit(66907u), ~var_3.x) << (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_3.x, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 4937u), vec2<u32>(var_3.x, 4294967295u)), 0u)) % 32u));
}

