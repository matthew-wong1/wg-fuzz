struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_1 {
    return Struct_1(true, _wgslsmith_f_op_f32(668f - -220f), u_input.b.x, 0i, vec2<bool>(false, !(!any(vec4<bool>(false, false, true, false)))));
}

fn func_3(arg_0: Struct_1) -> Struct_5 {
    global0 = _wgslsmith_sub_i32(1297i, u_input.b.x);
    global0 = select(_wgslsmith_mod_i32(-arg_0.c, abs(~(-9396i))), 1i, arg_0.a) & ~abs(_wgslsmith_mult_i32(-25435i, 25863i) << (~u_input.c.x % 32u));
    let var_0 = Struct_2(vec2<u32>(u_input.c.x, 16628u), 1009f, u_input.b.x);
    global0 = countOneBits(~(_wgslsmith_mult_i32(~30330i, _wgslsmith_div_i32(1i, var_0.c)) >> (countOneBits(_wgslsmith_mult_u32(1u, 0u)) % 32u)));
    let var_1 = ~(~vec3<u32>(1u, var_0.a.x, 4294967295u));
    return Struct_5(firstTrailingBit(~var_1.xy), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(2147483647i, -u_input.b.x)), ~vec2<i32>(select(u_input.b.x, 32785i, true), 27671i)), var_1.xx, 1i, Struct_4(vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, ~0i), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_mod_i32(3587i, 2147483647i), _wgslsmith_mult_i32(var_0.c, arg_0.d))), var_1, arg_0, -2147483647i));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: i32) -> vec3<u32> {
    global0 = i32(-1i) * -1i;
    var var_0 = reverseBits(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(u_input.b.x, arg_0.e.c.c)), arg_2 << (firstLeadingBit(vec2<u32>(3371u, arg_0.c.x)) % vec2<u32>(32u)), vec2<i32>(~(arg_0.e.d >> (arg_0.a.x % 32u)), arg_3)));
    return _wgslsmith_mult_vec3_u32(vec3<u32>(79968u, arg_0.a.x, 19532u) >> (firstLeadingBit(_wgslsmith_mod_vec3_u32(firstTrailingBit(arg_0.e.b), vec3<u32>(8587u, arg_0.c.x, u_input.a))) % vec3<u32>(32u)), ~(~arg_0.e.b));
}

fn func_1(arg_0: u32) -> Struct_5 {
    var var_0 = select(func_4(func_3(func_2()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(879f, -2128f, 409f, -245f) + vec4<f32>(-344f, -177f, 184f, -1076f))), -(~vec2<i32>(47502i, -4499i)), -2147483647i), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_0, 103068u, u_input.a), ~vec3<u32>(u_input.a, arg_0, 31427u)), ~countOneBits(vec3<u32>(arg_0, u_input.c.x, arg_0))), !(-u_input.b.x <= 17688i)) & countOneBits(reverseBits(countOneBits(vec3<u32>(1u, 0u, 18535u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec3<u32>(u_input.c.x, 97674u, 1u)) % vec3<u32>(32u))));
    global0 = max(i32(-1i) * -2147483647i, firstTrailingBit(~firstLeadingBit(u_input.b.x)));
    var_0 = vec3<u32>(_wgslsmith_mod_u32(22533u, 1u), (func_4(Struct_5(u_input.c, u_input.b.yx, vec2<u32>(49600u, 10064u), 283i, Struct_4(u_input.b.zz, vec3<u32>(9833u, 0u, arg_0), Struct_1(false, -463f, -2147483647i, u_input.b.x, vec2<bool>(true, true)), -16396i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-491f, -573f, 1000f, -1607f)), vec2<i32>(-14944i, 11528i), ~2147483647i).x & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.c.x, 86587u, 60961u), vec4<u32>(var_0.x, u_input.a, arg_0, u_input.a))) ^ _wgslsmith_clamp_u32(73590u, 11565u, _wgslsmith_dot_vec3_u32(vec3<u32>(27030u, 23068u, arg_0), min(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(var_0.x, 65549u, 29918u)))), 15035u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-986f * _wgslsmith_f_op_f32(floor(1246f))), _wgslsmith_f_op_f32(-605f + _wgslsmith_f_op_f32(ceil(806f)))) - 454f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(364f * 1678f)) + 630f) + 252f));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2().b * _wgslsmith_f_op_f32(f32(-1f) * -402f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2633f, _wgslsmith_f_op_f32(1000f - -1228f)), 1217f))))));
    return func_3(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(-2147483647i);
    global0 = u_input.b.x;
    var var_0 = vec2<f32>(_wgslsmith_div_f32(-264f, 377f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1123f * _wgslsmith_f_op_f32(f32(-1f) * -110f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1131f)) - _wgslsmith_f_op_f32(-371f - -764f))), 1000f)));
    let var_1 = func_1(min(u_input.c.x, ~u_input.c.x));
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(abs(1i), var_1.e.c.d), ~var_1.b.x, -(1i >> (_wgslsmith_mod_u32(var_1.e.b.x, ~u_input.a) % 32u)), ~_wgslsmith_sub_i32(-39305i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~55489i, u_input.b.yz, 4294967295u | ~(~func_1(112827u).c.x), _wgslsmith_f_op_f32(356f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_div_f32(323f, 270f))), var_0.x))), var_2);
}

