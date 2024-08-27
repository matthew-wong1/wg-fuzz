struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: Struct_2,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(10501u, 0u, 0u, 4294967295u);

var<private> global1: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(11907u, 35870u, 13236u), ~global0.zxx, select(vec3<u32>(1065u, 1u, u_input.a.x), vec3<u32>(u_input.c, 7507u, 4294967295u), vec3<bool>(false, true, false))), -188f, ~firstTrailingBit(vec4<i32>(10068i, 14469i, 1i, -31707i))), _wgslsmith_mod_vec2_u32(firstTrailingBit(global0.yz) | ~vec2<u32>(u_input.c, global0.x), global0.xy), !select(vec2<bool>(true, false), vec2<bool>(false, false), true)));
    let var_1 = var_0.a.a;
    global0 = firstTrailingBit(u_input.b);
    let var_2 = var_0.a.a;
    let var_3 = any(!select(var_0.a.c, !select(vec2<bool>(var_0.a.c.x, false), vec2<bool>(var_0.a.c.x, true), vec2<bool>(true, var_0.a.c.x)), select(var_0.a.c, vec2<bool>(true, var_0.a.c.x), !vec2<bool>(var_0.a.c.x, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-182f)) - _wgslsmith_div_f32(-1082f, _wgslsmith_f_op_f32(sign(197f))));
}

fn func_2() -> f32 {
    global0 = ~vec4<u32>(~1u, _wgslsmith_sub_u32(~30575u, u_input.a.x & 0u), ~(~(0u & global0.x)), u_input.a.x);
    let var_0 = Struct_3(Struct_2(Struct_1(~_wgslsmith_mod_vec3_u32(global0.wwx, vec3<u32>(16757u, 0u, 12047u)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1539f, -570f, -857f) * vec3<f32>(1553f, 474f, -327f)))), -(vec4<i32>(1i, -35055i, 2147483647i, -146i) >> (vec4<u32>(global0.x, 0u, 1u, 0u) % vec4<u32>(32u)))), vec2<u32>(0u, ~1u), select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))))));
    global1 = abs(var_0.a.a.c.x);
    let var_1 = var_0.a.a;
    global1 = var_0.a.a.c.x;
    return var_0.a.a.b;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_4 {
    global1 = 3190i;
    var var_0 = Struct_4(vec2<i32>(34787i, arg_0.c.x), _wgslsmith_sub_u32(4294967295u, countOneBits(global0.x)), Struct_2(Struct_1(abs(vec3<u32>(u_input.c, u_input.c, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * arg_0.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_0.c.x, 0i, arg_0.c.x), arg_0.c) >> (~vec4<u32>(24981u, u_input.a.x, 4294967295u, 25214u) % vec4<u32>(32u))), ~countOneBits(u_input.b.wy), !select(vec2<bool>(false, false), vec2<bool>(true, false), all(vec3<bool>(true, true, true)))), arg_2, arg_0.c.yzx);
    let var_1 = ~(~_wgslsmith_dot_vec4_i32(arg_0.c, _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(arg_0.c, arg_0.c), arg_0.c, var_0.c.a.c)));
    var var_2 = Struct_2(Struct_1(abs(~vec3<u32>(arg_1, 3907u, global0.x)), arg_2, min(vec4<i32>(_wgslsmith_div_i32(-27672i, arg_0.c.x), _wgslsmith_dot_vec2_i32(arg_0.c.yw, arg_0.c.zw), abs(var_0.c.a.c.x), var_1), var_0.c.a.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(max(u_input.c, _wgslsmith_div_u32(47906u, 32168u)), _wgslsmith_mult_u32(arg_0.a.x, ~var_0.b)), reverseBits(firstLeadingBit(~var_0.c.b))), vec2<bool>(false, countOneBits(arg_0.c.x) > (firstTrailingBit(var_1) << (~arg_1 % 32u))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.b - _wgslsmith_f_op_f32(sign(1624f))));
    return Struct_4(var_0.c.a.c.zw, (20850u & u_input.a.x) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, var_0.b, u_input.c), ~u_input.a), var_0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-584f))))))), vec3<i32>(-13262i, 1i >> (1u % 32u), select(firstLeadingBit(-2147483647i ^ var_1), firstTrailingBit(arg_0.c.x), false)));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = func_4(arg_1.c.a, ~u_input.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.c.a.b * _wgslsmith_f_op_f32(select(-533f, -514f, any(vec4<bool>(true, true, arg_1.c.c.x, false))))))));
    global1 = arg_0;
    var var_1 = func_4(Struct_1(~vec3<u32>(71430u, _wgslsmith_clamp_u32(var_0.b, arg_1.b, arg_1.c.b.x), var_0.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d)))), var_0.c.a.c), ~(~max(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, 105465u, arg_1.b, 50551u)), 87278u)), var_0.d).c.a;
    global1 = -1i;
    let var_2 = (var_1.c | var_1.c) << ((u_input.b & vec4<u32>(12906u, ~4294967295u ^ _wgslsmith_sub_u32(global0.x, 0u), 1u, var_1.a.x)) % vec4<u32>(32u));
    return func_4(Struct_1(_wgslsmith_mod_vec3_u32(select(countOneBits(global0.xxz), u_input.a.ywy, vec3<bool>(arg_1.c.c.x, arg_1.c.c.x, arg_2.x)), ~arg_1.c.a.a), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -(arg_1.c.a.c << (~vec4<u32>(33761u, 51223u, 72757u, var_1.a.x) % vec4<u32>(32u)))), global0.x, var_0.c.a.b).c.a;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_3(Struct_2(func_5(arg_1.x, func_4(Struct_1(vec3<u32>(global0.x, arg_3.a.x, arg_0), arg_3.b, vec4<i32>(-2147483647i, -1i, -1i, 1i)), min(695u, u_input.c), _wgslsmith_f_op_f32(func_2())), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), any(vec4<bool>(true, false, true, true)))), min(select(vec2<u32>(4534u, arg_0), global0.zx, vec2<bool>(false, true)), vec2<u32>(1u, arg_3.a.x)) & _wgslsmith_mod_vec2_u32(func_4(arg_3, arg_3.a.x, -398f).c.b, vec2<u32>(global0.x, 35709u)), vec2<bool>(true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true)))));
    global1 = arg_1.x;
    var_0 = Struct_3(var_0.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2, arg_2) * _wgslsmith_f_op_vec2_f32(arg_2 + vec2<f32>(arg_2.x, 285f))))), arg_2, -6586i == _wgslsmith_mod_i32(arg_3.c.x, ~(8175i << (arg_0 % 32u)))));
    var var_2 = Struct_3(func_4(func_5(-2147483647i, func_4(func_4(var_0.a.a, var_0.a.a.a.x, -974f).c.a, 7445u ^ var_0.a.a.a.x, _wgslsmith_f_op_f32(trunc(1561f))), var_0.a.c), 45361u, var_0.a.a.b).c);
    return 1u;
}

fn func_6(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = Struct_3(func_4(Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.x, 4294967295u, 15145u), vec3<u32>(0u, global0.x, arg_0.a.x)), 970f, _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 6526i, -21138i, arg_0.c.x) & arg_0.c, abs(arg_0.c))), u_input.c, 409f).c);
    var var_1 = 2147483647i;
    global1 = arg_0.c.x;
    global1 = _wgslsmith_mult_i32(arg_0.c.x, 0i);
    return StorageBuffer(~(~(vec3<u32>(24327u, 1u, arg_0.a.x) & vec3<u32>(arg_0.a.x, 1u, global0.x))) & vec3<u32>(~(44142u << (global0.x % 32u)), 1u, arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_vec4_u32(~(~(~(u_input.b ^ vec4<u32>(8383u, u_input.c, 1u, 38870u)))), u_input.a, u_input.b);
    let var_0 = 527f;
    global1 = ~_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_div_i32(1i, 1i)), -23546i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(659f, 1002f, var_0, 163f) - vec4<f32>(var_0, var_0, var_0, -641f)), vec4<f32>(_wgslsmith_f_op_f32(min(var_0, var_0)), -418f, _wgslsmith_f_op_f32(abs(1355f)), _wgslsmith_f_op_f32(-var_0)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, 834f, var_0, -1000f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 653f, var_0, var_0))))))));
    var var_2 = ~u_input.a.xzy;
    var_1 = vec4<f32>(338f, var_0, 1402f, var_0);
    global0 = ~countOneBits(max(u_input.b, select(firstTrailingBit(u_input.a), ~u_input.a, true)));
    let x = u_input.a;
    s_output = func_6(Struct_1(vec3<u32>(~70776u >> (func_1(u_input.c, vec3<i32>(-5625i, -6912i, -1i), var_1.yx, Struct_1(u_input.a.xzz, -278f, vec4<i32>(1i, 10199i, 1i, -59240i))) % 32u), u_input.c, 0u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-447f)))), -2386f)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 0i, 31709i, 2147483647i) << (~u_input.a % vec4<u32>(32u)), ~select(vec4<i32>(0i, -2147483647i, -24575i, -2147483647i), vec4<i32>(-16653i, -2147483647i, 27181i, -6558i), false))));
}

