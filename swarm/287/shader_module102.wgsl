struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_3(~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_1.d)), ~(vec4<u32>(1u, arg_1.b.x, 1u, arg_1.d) ^ vec4<u32>(u_input.a.x, 33958u, arg_1.d, 0u))));
    var_0 = Struct_3(~var_0.a);
    var var_1 = Struct_1(select(arg_1.a, select(arg_1.a, arg_1.a, select(!arg_1.a, vec2<bool>(arg_1.a.x, arg_1.a.x), true)), arg_1.a.x), firstTrailingBit(arg_1.b), u_input.b, u_input.a.x);
    var var_2 = Struct_3(~firstLeadingBit(~var_0.a));
    var_2 = Struct_3(var_0.a);
    return _wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b.x, 2147483647i, var_1.c.x) << (vec3<u32>(var_1.b.x, 23405u, var_0.a.x) % vec3<u32>(32u)), -vec3<i32>(u_input.b.x, -13256i, arg_0.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~var_1.c, ~arg_1.c), _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(10398i, var_1.c.x, u_input.b.x))), select(select(!vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), select(vec3<bool>(arg_1.a.x, var_1.a.x, false), vec3<bool>(false, false, false), true), true), !vec3<bool>(false, var_1.a.x, arg_1.a.x), select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_1.a.x, false), vec3<bool>(var_1.a.x, true, false), arg_1.a.x), all(vec3<bool>(var_1.a.x, true, arg_1.a.x))))), arg_1.c);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = vec4<i32>(countOneBits(-61280i), func_3(max(-vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, -1i, 8586i, u_input.b.x)) ^ vec4<i32>(-5257i, u_input.b.x, firstLeadingBit(u_input.b.x), _wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(-2147483647i, 2147483647i))), Struct_1(vec2<bool>(false, true), u_input.a ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, arg_0.x), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.b.x, u_input.b.x), vec3<i32>(35921i, -2147483647i, 18554i)), 107036u)), u_input.b.x, _wgslsmith_div_i32(u_input.b.x, ~(-3776i)));
    var var_1 = 63924u;
    var var_2 = Struct_2(reverseBits(firstTrailingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, var_0.x, 31061i, var_0.x), -vec4<i32>(u_input.b.x, u_input.b.x, -682i, 0i)))), all(vec2<bool>(true, true)));
    var var_3 = Struct_2(-max(_wgslsmith_sub_vec4_i32(vec4<i32>(-30753i, var_2.a.x, var_0.x, u_input.b.x), vec4<i32>(var_2.a.x, -1i, -2147483647i, 0i)), _wgslsmith_div_vec4_i32(var_2.a, var_2.a)) | ~(~vec4<i32>(22561i, var_2.a.x, 2147483647i, -29631i)), true);
    let var_4 = ~min(select(~vec4<u32>(3197u, arg_0.x, 13002u, 59964u), firstTrailingBit(vec4<u32>(0u, 0u, 63099u, 35495u)), select(vec4<bool>(true, var_2.b, var_3.b, true), vec4<bool>(var_3.b, var_2.b, true, var_3.b), var_2.b)), reverseBits(abs(vec4<u32>(u_input.a.x, 50635u, 4294967295u, 127933u)))) ^ firstTrailingBit(select(vec4<u32>(79289u, _wgslsmith_mod_u32(arg_0.x, arg_0.x), 1u, 1u), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 0u, arg_0.x), vec4<u32>(1u, u_input.a.x, arg_0.x, arg_0.x)), true));
    return Struct_1(vec2<bool>(false, var_2.b), arg_0, -_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b.x, -21256i, var_0.x), ~vec3<i32>(-23272i, 2147483647i, 30867i)), 42770u ^ _wgslsmith_mod_u32(var_4.x, 4294967295u));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = 1689f;
    let var_1 = _wgslsmith_clamp_vec4_u32(arg_0.a, _wgslsmith_add_vec4_u32(arg_0.a, vec4<u32>(0u, u_input.a.x | 1u, 4294967295u, u_input.a.x)) ^ ~(~(arg_0.a ^ vec4<u32>(0u, u_input.a.x, 117531u, 84883u))), ~abs(vec4<u32>(~1u, 1u, 1u, 70865u)));
    var var_2 = u_input.b;
    var var_3 = func_2(var_1.zz);
    var_3 = func_2(vec2<u32>(~(_wgslsmith_mult_u32(arg_0.a.x, u_input.a.x) << ((1u << (var_1.x % 32u)) % 32u)), _wgslsmith_mod_u32(u_input.a.x, firstTrailingBit(var_3.b.x)) | firstTrailingBit(firstLeadingBit(21762u))));
    return _wgslsmith_f_op_f32(-2325f * 449f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(349f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-621f, -333f), -225f, any(vec3<bool>(true, true, true)))))), -1260f)));
    var var_1 = Struct_2(reverseBits(vec4<i32>(10982i, min(~u_input.b.x, -2147483647i), u_input.b.x, u_input.b.x)), true);
    var var_2 = var_1.b & (var_1.b || (~(u_input.a.x << (4294967295u % 32u)) <= _wgslsmith_mult_u32(reverseBits(4294967295u), ~u_input.a.x)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(218f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1814f * -1000f) + -1661f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(536f, 1648f)), 346f, all(select(vec2<bool>(var_1.b, false), vec2<bool>(true, true), true)))), _wgslsmith_f_op_f32(step(-714f, _wgslsmith_f_op_f32(-287f - _wgslsmith_f_op_f32(func_1(Struct_3(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec3<f32>(-222f, 1751f, -1464f), var_1.b, var_1.a.x))))))));
    let var_4 = func_2(u_input.a);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2883f))) - _wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(ceil(var_3)), var_1.b)));
    var var_5 = select(~countOneBits(~reverseBits(vec3<i32>(-2189i, var_4.c.x, 2147483647i))), _wgslsmith_clamp_vec3_i32(~var_4.c << (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, var_4.b.x), vec3<u32>(var_4.b.x, var_4.d, 4384u)) % vec3<u32>(32u)), -_wgslsmith_clamp_vec3_i32(-vec3<i32>(-35226i, -2147483647i, var_1.a.x), vec3<i32>(10779i, var_4.c.x, -1393i), -u_input.b), ~(u_input.b >> ((vec3<u32>(32540u, 4294967295u, 19993u) << (vec3<u32>(1u, u_input.a.x, 3548u) % vec3<u32>(32u))) % vec3<u32>(32u)))), !vec3<bool>(false, !select(var_1.b, false, true), var_1.b));
    var_2 = ((_wgslsmith_mod_u32(u_input.a.x, 27817u) != _wgslsmith_div_u32(var_4.d, reverseBits(u_input.a.x))) && (true & (var_3 > -181f))) | var_4.a.x;
    var_0 = -938f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(-26849i, _wgslsmith_mult_i32(var_5.x, 3609i) | u_input.b.x), _wgslsmith_div_i32(-1i, -var_4.c.x) << (4294967295u % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(15666i, var_5.x), -var_5.xy)), 84485u, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(var_4.b, ~(vec2<u32>(39682u, var_4.d) & vec2<u32>(u_input.a.x, 13725u)), u_input.a), func_2(_wgslsmith_div_vec2_u32(var_4.b, vec2<u32>(4294967295u, var_4.d))).b));
}

