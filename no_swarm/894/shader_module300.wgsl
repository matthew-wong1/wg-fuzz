struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: bool,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -570f)));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -14597i, -38054i), (vec2<i32>(~(-10065i), 2147483647i) >> (~vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))) | vec2<i32>(-8668i, u_input.a));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + 248f))) + _wgslsmith_f_op_f32(max(-925f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-231f * _wgslsmith_div_f32(-556f, 295f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1074f)) * 1553f)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -164f);
    var var_2 = -(~reverseBits(u_input.a) | _wgslsmith_sub_i32(u_input.a ^ u_input.a, var_1.x));
    return Struct_2(reverseBits(~_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(var_1.x, 20651i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, -1i), vec2<i32>(34809i, 24132i)))));
}

fn func_3(arg_0: Struct_2) -> Struct_3 {
    var var_0 = select(select(!vec3<bool>(select(true, true, false), any(vec2<bool>(false, false)), true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)))), select(vec3<bool>(true, true, any(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true))), vec3<bool>(select(true, select(false, true, true), true), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true)), _wgslsmith_div_f32(-1106f, _wgslsmith_f_op_f32(floor(938f))) == -186f), -25363i > _wgslsmith_mult_i32(u_input.a, -arg_0.a.x));
    var_0 = vec3<bool>(true, true, !all(select(select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(false, var_0.x, true, false), false), vec4<bool>(false, var_0.x, false, true), all(vec4<bool>(var_0.x, false, true, false)))));
    var_0 = vec3<bool>(var_0.x, false, all(select(vec3<bool>(select(true, true, var_0.x), false, true), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, false, true), vec3<bool>(var_0.x, false, var_0.x)), !vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x)));
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(1u, u_input.b.x), 20774u);
    var var_2 = ~_wgslsmith_div_u32(1u, ~u_input.b.x);
    return Struct_3(u_input.b, arg_0, u_input.a);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_4(2344u, u_input.a, false, true, func_3(func_2()));
    let var_1 = Struct_1(~vec2<u32>(select(var_0.a, ~52547u, false), ~select(56335u, u_input.c, var_0.c)), -583f);
    let var_2 = func_3(Struct_2(reverseBits(-(~var_0.e.b.a))));
    var_0 = Struct_4(func_3(func_3(Struct_2(firstTrailingBit(var_0.e.b.a))).b).a.x, var_0.b, true, var_1.a.x >= max(52428u, ~firstLeadingBit(var_0.e.a.x)), var_0.e);
    let var_3 = Struct_2(vec2<i32>(0i, var_2.c));
    return Struct_2(~(select(var_2.b.a, var_3.a << (vec2<u32>(77530u, var_0.a) % vec2<u32>(32u)), select(vec2<bool>(true, var_0.d), vec2<bool>(true, true), var_0.c)) ^ vec2<i32>(var_0.b, _wgslsmith_add_i32(var_3.a.x, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(u_input.b.x);
    var var_0 = 1i;
    var_0 = _wgslsmith_div_i32(-2147483647i, ~(~u_input.a & abs(-u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -693f)))));
    var var_2 = Struct_3(~(u_input.b << (~(~u_input.b) % vec3<u32>(32u))), func_1(), max(u_input.a, _wgslsmith_div_i32(i32(-1i) * -27274i, 20995i)));
    var var_3 = (u_input.a & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_2.b.a, var_2.b.a), firstLeadingBit(vec2<i32>(u_input.a, 49247i))), reverseBits(1i))) > func_1().a.x;
    var var_4 = ~u_input.c;
    var_0 = 48277i;
    var var_5 = var_2.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(select(~(-(~vec3<i32>(u_input.a, 24143i, -2147483647i))), vec3<i32>(var_2.b.a.x, 0i, abs(2147483647i) | (1738i >> (u_input.b.x % 32u))), vec3<bool>(reverseBits(var_2.b.a.x) < max(-27999i, -118i), false, _wgslsmith_mod_i32(-43320i, -1i) >= min(-2147483647i, var_2.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-337f, -900f, var_1))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1000f, 506f)))))), ~u_input.b.xz ^ ~_wgslsmith_div_vec2_u32(abs(vec2<u32>(55917u, u_input.c)), vec2<u32>(4294967295u, 0u)), _wgslsmith_f_op_f32(round(var_1)));
}

