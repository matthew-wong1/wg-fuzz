struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    let var_0 = arg_0.c;
    var var_1 = arg_1;
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(arg_0.c.a + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(368f)))))))));
    let var_4 = arg_0.d;
    return abs(0u | abs(arg_1.b));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-300f * 185f)))));
    var var_1 = Struct_2(vec4<i32>(arg_3.a.x, -_wgslsmith_mod_i32(arg_3.a.x, arg_2.d), arg_3.a.x, arg_2.d), arg_3.b << (_wgslsmith_div_u32(~1u, ~32896u) % 32u));
    var var_2 = -_wgslsmith_add_i32(~(-arg_3.a.x), firstLeadingBit(i32(-1i) * -26084i) >> (firstLeadingBit(u_input.c.x ^ arg_0.x) % 32u));
    var var_3 = !(!vec2<bool>(any(vec4<bool>(false, false, false, true)) | true, var_0 <= arg_2.a));
    var_2 = u_input.b;
    return !all(select(!(!vec2<bool>(false, var_3.x)), vec2<bool>(var_3.x & var_3.x, !var_3.x), select(any(vec2<bool>(var_3.x, true)), var_3.x, true)));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(~vec3<u32>(~(~1u), func_3(Struct_3(Struct_2(vec4<i32>(-2147483647i, -2737i, 10058i, u_input.b), u_input.a), Struct_2(vec4<i32>(u_input.b, 2147483647i, -27887i, 44613i), 4838u), Struct_1(1385f, u_input.c.x, u_input.c.zz, -1i), false, Struct_2(vec4<i32>(u_input.b, u_input.b, -15825i, u_input.b), u_input.a)), Struct_1(559f, u_input.a, u_input.c.yz, -2147483647i)), _wgslsmith_clamp_u32(u_input.a, min(u_input.a, u_input.a), 0u << (1u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1180f, -916f))), Struct_1(-979f, ~u_input.a, vec2<u32>(u_input.a, 0u) & vec2<u32>(1u >> (u_input.a % 32u), u_input.a), min(u_input.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -38433i, u_input.b), vec4<i32>(41494i, u_input.b, 8968i, -1i)))), Struct_2(vec4<i32>(i32(-1i) * -33198i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b, 1i), u_input.b, u_input.b >> (4294967295u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(39308i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) & vec4<i32>(u_input.b, -23795i, u_input.b, -2147483647i)), u_input.b), 0u));
    let var_1 = _wgslsmith_mult_vec3_i32(abs(-vec3<i32>(~u_input.b, 2147483647i, _wgslsmith_mod_i32(u_input.b, 14009i))), vec3<i32>(-1i, u_input.b, _wgslsmith_dot_vec3_i32(abs(countOneBits(vec3<i32>(u_input.b, u_input.b, -1i))), ~(~vec3<i32>(29340i, -1i, u_input.b)))));
    var var_2 = Struct_2(abs(~min(vec4<i32>(2147483647i, 1i, -24454i, 2147483647i), ~vec4<i32>(-7416i, -11270i, u_input.b, -1i))), min(u_input.c.x, 1u));
    var var_3 = -486f;
    let var_4 = Struct_2(select(abs(var_2.a), vec4<i32>(-32920i, 14642i, -28464i, (var_2.a.x << (13841u % 32u)) << (~u_input.c.x % 32u)), !all(vec2<bool>(true, true))), 1u);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -664f))) - 558f), 0u, max(~(~(~u_input.c.yz)), ~u_input.c.xz), ~_wgslsmith_div_i32(16468i, ~u_input.b));
}

fn func_1(arg_0: bool, arg_1: bool) -> f32 {
    let var_0 = func_2();
    var var_1 = ~(-u_input.b);
    var_1 = 1i;
    let var_2 = 1i;
    var_1 = -1i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(var_0.a * 630f))) * var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a * 1629f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, any(vec4<bool>(true, false, false, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -483f), _wgslsmith_f_op_f32(trunc(1022f)));
    var var_1 = select(vec2<bool>(true, !all(vec4<bool>(true, true, true, true)) & any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true))), vec2<bool>(false, true & any(vec4<bool>(true, true, true, true))), false);
    let var_2 = vec2<u32>(1u, 0u);
    var var_3 = Struct_3(Struct_2(vec4<i32>(-35396i, -2147483647i, abs(12306i), 1i), ~0u & (12251u ^ func_2().b)), Struct_2(firstTrailingBit(firstLeadingBit(reverseBits(vec4<i32>(-1i, u_input.b, 1609i, 2147483647i)))), 30918u), func_2(), u_input.b == _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, -2147483647i >> (u_input.c.x % 32u)), _wgslsmith_mult_i32(~1i, i32(-1i) * -27009i)), Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(17128i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(9877u, 30595u, 41522u, u_input.a) % vec4<u32>(32u))), vec4<i32>(~u_input.b, u_input.b, ~(-1i), firstTrailingBit(-13805i))), u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2), vec4<i32>(0i, u_input.b, ~(-1i), -var_3.a.a.x) >> (_wgslsmith_mod_vec4_u32(max(~vec4<u32>(u_input.a, 95051u, 53158u, var_2.x), vec4<u32>(4294967295u, 6872u, 6852u, u_input.a) >> (vec4<u32>(4610u, var_3.e.b, u_input.a, u_input.c.x) % vec4<u32>(32u))), abs(firstLeadingBit(vec4<u32>(var_3.c.b, var_3.a.b, var_3.b.b, 48901u)))) % vec4<u32>(32u)), -13887i << (min(_wgslsmith_sub_u32(~var_2.x, var_3.a.b), _wgslsmith_mult_u32(4027u, 0u)) % 32u), _wgslsmith_f_op_vec3_f32(trunc(var_0)), -(var_3.c.d << (~(~var_2.x) % 32u)));
}

