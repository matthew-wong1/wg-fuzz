struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

var<private> global2: f32 = 1431f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    var var_0 = vec2<i32>(arg_0.x, arg_0.x);
    let var_1 = ~24715u;
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -813f)));
    var var_2 = ~global0.b.xyz;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f + -1404f))))));
    return global0.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> Struct_3 {
    var var_0 = _wgslsmith_add_vec4_i32(abs(global0.b), vec4<i32>(arg_0.c, _wgslsmith_mult_i32(10094i, _wgslsmith_add_i32(96497i, global0.c.c)), 0i, 2954i)) ^ countOneBits(vec4<i32>(_wgslsmith_sub_i32(~(-12203i), arg_0.c), 5294i << (_wgslsmith_mod_u32(0u, arg_2) % 32u), 36098i, -21279i));
    var var_1 = vec4<bool>(~_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(0u, u_input.a.x)), 1u) > ~1u, func_2(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 1i, 18738i, arg_1.x) << (global0.a % vec4<u32>(32u)), ~vec4<i32>(1i, -5418i, arg_0.c, 31006i)), all(vec2<bool>(false, arg_0.b))).b || !any(vec4<bool>(global0.c.b, true, global0.c.b, arg_0.b)), true, true);
    var var_2 = Struct_3(_wgslsmith_clamp_vec2_i32(global0.b.xx, vec2<i32>(global0.c.c, reverseBits(_wgslsmith_dot_vec4_i32(global0.b, vec4<i32>(-2147483647i, var_0.x, arg_0.c, var_0.x)))), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global0.c.c, global0.b.x)) >> (u_input.a.zy % vec2<u32>(32u)), vec2<i32>(1i, arg_0.c) & (vec2<i32>(arg_1.x, 2147483647i) | var_0.xz), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(global0.c.c, var_0.x)), var_0.wz))), true);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(-394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -256f))))));
    var var_4 = global0.c;
    return Struct_3(_wgslsmith_div_vec2_i32(~abs(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.a.x, 33540i), vec2<i32>(27731i, var_0.x))), -_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i) | var_0.yz, -var_2.a)), true);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_3.c.c;
    var var_1 = max(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.x, func_3(func_2(vec4<i32>(arg_2.a.x, arg_3.c.c, arg_2.a.x, -2147483647i), true), vec2<i32>(global0.b.x, arg_0.a.x) ^ global0.b.xx, 32704u).a.x, arg_3.b.x), vec3<i32>(0i, firstTrailingBit(~17564i), _wgslsmith_mod_i32(-arg_0.a.x, -arg_0.a.x))), global0.b.yzy);
    let var_2 = arg_3.c;
    var_1 = arg_3.b.xzw;
    var_1 = global0.b.yzw;
    return Struct_3(abs(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.a, var_1.zx), ~arg_1) >> (min(_wgslsmith_clamp_vec2_u32(global0.a.xx, arg_3.a.wx, arg_3.a.xy), reverseBits(global0.a.zy)) % vec2<u32>(32u))), all(!(!vec3<bool>(arg_0.b, false, arg_3.c.b))));
}

fn func_1(arg_0: i32) -> f32 {
    global2 = 184f;
    let var_0 = vec2<bool>(arg_0 > 1i, global0.c.b);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-108f, -206f))))) * -128f) - _wgslsmith_f_op_f32(trunc(1474f)));
    global2 = _wgslsmith_f_op_f32(round(-462f));
    var var_1 = func_4(Struct_3(select(vec2<i32>(arg_0 | 23346i, arg_0), _wgslsmith_add_vec2_i32(global0.b.xz, abs(vec2<i32>(arg_0, global0.c.c))), var_0), ((46896u & u_input.a.x) >> (~33053u % 32u)) <= global0.c.a), vec2<i32>(~63546i, global0.b.x), func_3(func_2(vec4<i32>(arg_0 & 1i, global0.c.c, _wgslsmith_add_i32(arg_0, global0.b.x), global0.b.x), var_0.x), global0.b.zz, min(~1u, u_input.a.x)), Struct_2(vec4<u32>(~_wgslsmith_clamp_u32(global0.c.a, 30660u, 1u), 9149u, global0.c.a, _wgslsmith_dot_vec2_u32(global0.a.yy, ~global0.a.xw)), _wgslsmith_add_vec4_i32(abs(_wgslsmith_sub_vec4_i32(global0.b, global0.b)), global0.b), global0.c));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2005f)) * _wgslsmith_f_op_f32(min(-1455f, 1417f))))) * _wgslsmith_f_op_f32(f32(-1f) * -942f)), -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(func_1(global0.c.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2017f, -383f) * vec2<f32>(151f, 1739f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1250f, -567f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(sign(var_0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(114f, -394f)) * vec2<f32>(581f, -364f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2302f, -2776f) * vec2<f32>(var_0.x, -464f)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-656f, 1190f) - vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 698f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))))));
    var var_1 = Struct_2((_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, 4294967295u, 28061u), ~vec4<u32>(u_input.a.x, u_input.a.x, global0.c.a, global0.a.x), vec4<u32>(global0.a.x, u_input.a.x, 81105u, u_input.a.x)) & vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(59806u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 84002u, 0u, 0u)), 52609u, ~u_input.a.x, 1u)) & global0.a, max(-global0.b, firstLeadingBit((vec4<i32>(-1765i, 0i, global0.b.x, global0.b.x) >> (global0.a % vec4<u32>(32u))) << (~vec4<u32>(0u, global0.c.a, 21077u, global0.a.x) % vec4<u32>(32u)))), Struct_1((45397u | u_input.a.x) >> (_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.xy) % 32u), global0.c.b, ~_wgslsmith_add_i32(-global0.c.c, i32(-1i) * -42672i)));
    var var_2 = func_2(((-vec4<i32>(global0.c.c, global0.c.c, 30818i, 17195i) | vec4<i32>(global0.c.c, var_1.c.c, 2147483647i, -34901i)) & global0.b) | min(global0.b, -vec4<i32>(var_1.b.x, var_1.b.x, -24948i, 1i)), true);
    let var_3 = vec3<i32>(var_1.c.c >> (_wgslsmith_clamp_u32(countOneBits(4294967295u), global0.a.x, 54821u) % 32u), -firstTrailingBit(_wgslsmith_add_i32(countOneBits(var_1.b.x), ~9896i)), abs(_wgslsmith_dot_vec3_i32(var_1.b.zwz, vec3<i32>(0i, func_3(Struct_1(7282u, true, -2147483647i), global0.b.yw, var_2.a).a.x, ~0i))));
    var var_4 = Struct_3(~(-_wgslsmith_mult_vec2_i32(abs(vec2<i32>(var_1.c.c, 13101i)), vec2<i32>(68314i, var_2.c))), var_2.b & false);
    var_4 = func_3(var_1.c, ~_wgslsmith_sub_vec2_i32(-global0.b.ww, vec2<i32>(var_1.b.x | -1i, ~(-16184i))), ~global0.a.x);
    var_4 = func_3(global0.c, ~vec2<i32>(_wgslsmith_div_i32(1i, i32(-1i) * -1i), var_1.b.x), ~global0.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(abs(609f)), _wgslsmith_f_op_f32(-var_0.x)) + vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), 669f, -640f, var_0.x)))), ~vec4<u32>(0u, _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 1u), var_2.a), 39201u, 4294967295u), vec3<i32>(-1i, -33901i, var_1.b.x));
}

