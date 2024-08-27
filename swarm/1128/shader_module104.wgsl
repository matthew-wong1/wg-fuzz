struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(21179i, -3929i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_5) -> vec3<u32> {
    global0 = vec2<i32>(~arg_1.c, global0.x);
    global0 = firstLeadingBit(vec2<i32>(global0.x, -1i));
    global0 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global0.x, global0.x) ^ vec2<i32>(-16762i, _wgslsmith_sub_i32(-2147483647i, arg_1.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.c, -2147483647i), vec2<i32>(1i, global0.x) | vec2<i32>(-3006i, global0.x)) >> (_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xw, u_input.a.xx), u_input.a.zx) % vec2<u32>(32u)), countOneBits(vec2<i32>(34912i, -4211i))), firstTrailingBit(vec2<i32>(arg_1.c, ~9254i) & reverseBits(-vec2<i32>(global0.x, global0.x))));
    global0 = (max(_wgslsmith_add_vec2_i32(select(vec2<i32>(global0.x, global0.x), vec2<i32>(-16012i, global0.x), arg_1.b.x), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, global0.x), vec2<i32>(global0.x, arg_1.c))), vec2<i32>(arg_1.c, 1i)) & (vec2<i32>(max(33574i, 1i), arg_1.c << (12398u % 32u)) << (u_input.a.yz % vec2<u32>(32u)))) << (_wgslsmith_mult_vec2_u32(vec2<u32>(~(~u_input.a.x), u_input.a.x), ~vec2<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.yz))) % vec2<u32>(32u));
    global0 = select(abs(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(-25894i, arg_1.c) << (u_input.a.xx % vec2<u32>(32u))), ~(-vec2<i32>(16832i, arg_1.c)), ~vec2<i32>(arg_1.c, global0.x) & -vec2<i32>(global0.x, global0.x))), vec2<i32>(-4185i, _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(45505i, -2147483647i), vec2<i32>(-1i, global0.x))), vec2<i32>(1i, abs(-17675i)))), vec2<bool>(select(arg_1.b.x, true, arg_1.b.x), -1297f > arg_1.a));
    return _wgslsmith_mult_vec3_u32(~(~vec3<u32>(53207u, u_input.a.x, u_input.a.x) << (~u_input.a.zww % vec3<u32>(32u))), ~vec3<u32>(48938u, 96723u, u_input.a.x)) ^ vec3<u32>(u_input.a.x, ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~u_input.a.x);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec3<u32> {
    return _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-661f, arg_1.c, -792f) + vec3<f32>(arg_1.c, 978f, arg_1.c)), Struct_5(arg_1.c, vec2<bool>(true, arg_1.a), arg_0, vec2<f32>(199f, arg_1.c))), u_input.a.yzw & ~_wgslsmith_div_vec3_u32(u_input.a.yxx, u_input.a.www), vec3<u32>(4294967295u, min(103561u >> (u_input.a.x % 32u), 10380u), 48282u)), vec3<u32>(12379u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 1u, u_input.a.x), vec3<u32>(4294967295u, 24103u, arg_1.b.x))), 1u));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = func_2(14313i, Struct_2(false, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 66107u), u_input.a.xx)), ~(~vec2<u32>(1u, 0u))), 1000f));
    global0 = -vec2<i32>(2147483647i, -13510i);
    var var_2 = Struct_2(any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, false, true))), vec2<bool>(true, true), all(vec4<bool>(false, false, true, false)) == false)), var_1.xx, var_0);
    let var_3 = 96839u;
    return Struct_3(1u, Struct_2(select(any(!vec3<bool>(true, var_2.a, var_2.a)), all(vec3<bool>(true, var_2.a, var_2.a)) & !var_2.a, var_2.a), ~_wgslsmith_mult_vec2_u32(vec2<u32>(24572u, 0u), vec2<u32>(19017u, u_input.a.x)) ^ func_2(0i, Struct_2(false, u_input.a.zx, 1741f)).zz, var_2.c), ~(~vec4<u32>(reverseBits(var_3), 1u, 555u, var_3)), var_2.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_2 {
    global0 = arg_0.yz;
    global0 = -vec2<i32>(0i, arg_0.x);
    var var_0 = -3085f;
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-289f)))) + -176f))));
    var var_1 = Struct_3(~23989u, func_4(firstLeadingBit(vec3<i32>(global0.x ^ -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1595i, global0.x, global0.x), vec3<i32>(global0.x, -59698i, global0.x)), countOneBits(2147483647i))), func_1()), _wgslsmith_sub_vec4_u32(vec4<u32>(min(_wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.zx), _wgslsmith_dot_vec2_u32(vec2<u32>(41419u, 1u), u_input.a.zy)), ~_wgslsmith_sub_u32(45046u, 1u), u_input.a.x, u_input.a.x), ~vec4<u32>(countOneBits(28064u), firstLeadingBit(1u), _wgslsmith_add_u32(33424u, 32032u), countOneBits(u_input.a.x))), !(!any(vec2<bool>(true, true))));
    var_1 = func_1();
    var_1 = func_1();
    var var_2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(1818u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(139f - _wgslsmith_f_op_f32(var_1.b.c + 1084f)) + var_1.b.c), -910f, var_0, 1360f), var_0, func_4((vec3<i32>(48901i, global0.x, global0.x) ^ ~vec3<i32>(23833i, global0.x, global0.x)) << (vec3<u32>(1u, 1u, reverseBits(11147u)) % vec3<u32>(32u)), Struct_3(func_2(~global0.x, func_4(vec3<i32>(-5071i, 1i, 21759i), Struct_3(u_input.a.x, var_1.b, var_1.c, false))).x, func_1().b, max(~u_input.a, vec4<u32>(4415u, var_1.b.b.x, u_input.a.x, var_1.c.x)), true && (69211u > var_1.c.x))).c);
}

